# Data & Bash Projects Portfolio

This repository showcases a series of **Bash + PostgreSQL projects** I built to strengthen my programming, database, and scripting skills. Each project demonstrates real-world application of **data management, CLI tools, and database integration**. Those projects are all part of my **freeCodeCamp** curriculum, which provided me of certifications to validate all the knowledge learnt here.

---

## **1. Arithmetic Formatter (Python)**

**Description:**  
A CLI tool in Python that formats arithmetic problems vertically and side-by-side, optionally providing solutions.

**Key Features:**
- Accepts up to **5 arithmetic problems** (addition/subtraction).  
- Validates input and provides **error messages** for invalid data.  
- Supports optional **calculation of results**.  
- Outputs problems in a **neat vertical layout** for readability.  

**Learning Outcomes:**
- Enhanced **Python string manipulation** and **formatting skills**.  
- Practiced **modular programming** with functions for validation and formatting.  

---

## **2. World Cup Database (Bash + PostgreSQL)**

**Description:**  
A CLI project to populate and query a World Cup database from a CSV file.

**Files & Database:**
- `insert_data.sh`: imports data from `games.csv` into the PostgreSQL database.  
- `queries.sh`: queries the database for various statistics and insights.  
- `worldcup.sql`: contains the database schema and preloaded data.

**Key Features:**
- **Dynamic insertion** with conflict handling (`ON CONFLICT DO NOTHING`) to avoid duplicate teams.  
- Queries include:  
  - Total goals by winning teams  
  - Average goals per game  
  - Teams participating in specific rounds  
  - List of champions and unique winners  

**Learning Outcomes:**
- Mastered **PostgreSQL table creation, foreign keys, and sequences**.  
- Practiced **Bash scripting to automate database operations**.  
- Learned to **join tables** and perform **aggregate queries**.

---

## **3. Salon Appointment Scheduler (Bash + PostgreSQL)**

**Description:**  
A CLI tool to schedule salon appointments, tracking customer info and services.

**Files & Database:**
- `salon.sh`: main script for appointment scheduling.  
- `salon.sql`: database schema with `customers`, `services`, and `appointments`.

**Key Features:**
- Displays **services menu dynamically**.  
- Handles **new and returning customers**.  
- Schedules appointments and stores them with **timestamps**.  
- Validates service selection and customer input.

**Learning Outcomes:**
- Developed **interactive Bash menus** with conditional logic.  
- Practiced **foreign key constraints** and relational database management.  
- Learned to handle **user input sanitization** and **dynamic queries**.

---

## **4. Periodic Table Lookup (Bash + PostgreSQL + Git)**

**Description:**  
A CLI tool to retrieve detailed information about chemical elements.

**Files & Database:**
- `element.sh`: fetches element details based on atomic number, symbol, or name.  
- `periodic_table.sql`: database schema for elements, properties, and types.

**Key Features:**
- Retrieves element data including:  
  - Name, symbol, type  
  - Atomic mass, melting point, boiling point  
- Handles **invalid or missing input** gracefully.  
- **Tracked changes with Git** during development for version control.

**Learning Outcomes:**
- Strengthened **database joins** across multiple tables.  
- Practiced **Bash text processing** using loops and `sed`.  
- Learned **Git workflow for project tracking**.

---

## **5. Number Guessing Game with Leaderboard (Bash + PostgreSQL)**

**Description:**  
A CLI number guessing game with persistent user tracking and leaderboard functionality.

**Files & Database:**
- `number_guess.sh`: game logic and database interaction.  
- `number_guess.sql`: database schema for `users` and `games`.

**Key Features:**
- Accepts a username and tracks returning players.  
- Randomly generates a **secret number between 1 and 1000**.  
- Provides **hints** for each guess (higher/lower).  
- Tracks **total games played** and **lowest number of guesses** per user.  
- **Database created from scratch** entirely by me, with no pre-built tables.  

**Learning Outcomes:**
- Mastered **Bash loops, conditionals, and input validation**.  
- Practiced **PostgreSQL DDL and DML** to manage game stats.  
- Gained experience building a **full-stack CLI application** with persistent data.

<img width="1280" height="800" alt="Capture d’écran 2025-12-18 à 18 30 56" src="https://github.com/user-attachments/assets/ed0b0be6-eb08-42d9-a284-1b10bc1d404b" />

---

### **General Skills Acquired**
- Bash scripting and CLI interactivity  
- PostgreSQL database design, queries, and relationships  
- Git version control and project tracking  
- Real-world application of **data handling, input validation, and automation**  

---

This portfolio demonstrates my ability to integrate **programming, databases, and shell scripting** for practical, interactive projects.
