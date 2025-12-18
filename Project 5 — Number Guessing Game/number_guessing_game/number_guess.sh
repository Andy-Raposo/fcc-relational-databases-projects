#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

USER_EXISTS=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
if [[ -z $USER_EXISTS ]]
then
  INSERT_NAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  INSERT_DATA=$($PSQL "INSERT INTO games(user_id, played_games, lowest_guesses) VALUES($USER_ID, 0, 10000)")
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
fi

ROW=$($PSQL "SELECT played_games, lowest_guesses FROM games WHERE user_id=$USER_ID")
IFS="|" read GAMES LOWEST_GUESS <<< "$ROW"

if ! [[ $GAMES =~ ^[0-9]+$ ]]
then
  GAMES=0
  LOWEST_GUESS=0
fi

if (( GAMES == 0 ))
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $LOWEST_GUESS guesses."
fi
echo "Guess the secret number between 1 and 1000:"

USER_GUESS=0
CURRENT_GUESSES=0

while (( USER_GUESS != RANDOM_NUMBER ))
do
  read USER_GUESS
  if ! [[ $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi
  ((CURRENT_GUESSES++))
  if (( USER_GUESS > RANDOM_NUMBER ))
  then
    echo "It's lower than that, guess again:"
  elif (( USER_GUESS < RANDOM_NUMBER ))
  then
    echo "It's higher than that, guess again:"
  fi
done
((GAMES++))
echo "You guessed it in $CURRENT_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"

if (( LOWEST_GUESS == 0 || CURRENT_GUESSES < LOWEST_GUESS ))
then
  LOWEST_GUESS=$CURRENT_GUESSES
fi

UPDATE_DATA=$($PSQL "UPDATE games SET played_games=$GAMES, lowest_guesses=$LOWEST_GUESS WHERE user_id=$USER_ID")
