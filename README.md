# Bash Scripting Guide & Practice

A structured collection of **41 Bash shell scripts** (`01` through `41`), reference PDFs, and sample input data designed for learning Linux command-line automation from basic syntax to real-world system administration.

## Repository Contents

### 1. Core Basics & Data Structures (`01` – `09`)
* **Basics & Comments** (`01`–`02`): Shebang setup, standard output, and single/multi-line comments.
* **Variables & Constants** (`03`–`04`): Mutable variables, command substitution, and read-only values.
* **Arrays & Strings** (`05`–`07`): Indexed arrays, associative key-value maps, and string manipulation.
* **Input & Math** (`08`–`09`): Interactive user prompts and integer arithmetic operations.

### 2. Conditionals & Loops (`10` – `23`, `28` – `29`)
* **Decision Making** (`10`–`14`): `if-else`, `elif` branches, `case` menus, logical operators, and shorthand expressions.
* **Iteration** (`15`–`21`): `for`, `while`, `until`, and infinite loop patterns across numbers, arrays, and files.
* **File & CSV Processing** (`22`–`23`): Line-by-line input redirection and parsing comma-separated records.
* **Flow Control** (`28`–`29`): Exiting loops early (`break`) and skipping iterations (`continue`).

### 3. Functions & Script Arguments (`24` – `27`, `35`)
* **Functions** (`24`–`25`): Defining reusable functions and passing positional arguments.
* **CLI Parameters** (`26`–`27`, `35`): Validating argument counts, shifting multi-word inputs, and reading the active script name.

### 4. System Administration & Utilities (`30` – `34`, `36` – `41`)
* **Checks & Validation** (`30`–`31`, `33`): Network connectivity checks, file existence verification, and root privilege validation.
* **Utilities & Logging** (`32`, `34`, `36`–`37`): Random number generation, output redirection, syslog integration, and script debugging.
* **System Monitoring & Automation** (`38`–`41`): RAM usage alerts, filesystem disk monitoring, automated project archiving, and local user account creation.

### 5. Reference Guides & Sample Data
* **Study Guide PDF**: Comprehensive notes covering core shell scripting concepts.
* **Scripts & Outputs PDF**: Consolidated reference pairing script code with sample terminal outputs.
* **Sample Data (`test.csv`)**: Comma-separated records used for testing CSV parsing scripts.

## Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com
   cd Bash-Scripting
   ```
2. **Make the scripts executable:**
   ```bash
   chmod +x *.sh
   ```
3. **Run any script:**
   ```bash
   ./01_basic.sh
   ```

## Common Comparison Operators

* `-eq` / `==` : Equal to
* `-ne` / `!=` : Not equal to
* `-gt` / `-ge` : Greater than / Greater than or equal to
* `-lt` / `-le` : Less than / Less than or equal to
