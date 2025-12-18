#!/bin/bash

echo "Ici tout commence !"

PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only -c"

# Captialisation of letters by setting as uppercase only the first letter

CAPITALISE=$($PSQL "UPDATE elements SET symbol = UPPER(SUBSTRING(symbol FROM 1 FOR 1)) || LOWER(SUBSTRING(symbol FROM 2))")

echo -e "\nCapitalisation successful!"

# Removal of trailing zeros from atomic_mass using REAL (floating point)

$PSQL "ALTER TABLE properties
ALTER COLUMN atomic_mass
TYPE REAL
USING atomic_mass::REAL;"

echo -e "\nTrailing zeros removed successfully!"

