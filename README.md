# Bash Shell Scripting Examples (01 to 17)

A structured collection of 17 foundational Bash shell scripts covering variables, arrays, string manipulation, user input, arithmetic, conditionals, logical operators, and loops.

## 📂 Repository Contents

| # | Script File | Topic | Description |
| :--- | :--- | :--- | :--- |
| 01 | `01_basic.sh` | Basic Script | Demonstrates the shebang (`#!/bin/bash`) and printing output to the terminal with `echo`. |
| 02 | `02_comments.sh` | Comments | Shows how to write single-line (`#`) and multi-line (`<<comment ... comment`) comments. |
| 03 | `03_vardemo.sh` | Variables | Covers variable assignment, reassignment, and storing command output (`$(hostname)`). |
| 04 | `04_constant_var.sh` | Constants | Demonstrates declaring read-only variables using `readonly` so values cannot be modified. |
| 05 | `05_arrays.sh` | Indexed Arrays | Shows creating indexed arrays, accessing elements, checking length, slicing, and appending values. |
| 06 | `06_key-value.sh` | Associative Arrays | Demonstrates storing and retrieving key-value pairs using `declare -A`. |
| 07 | `07_string_ops.sh` | String Operations | Covers finding string length, changing case (`^^` / `,,`), replacing substrings, and slicing text. |
| 08 | `08_user_int.sh` | User Interaction | Prompts the user and captures interactive input into a variable using `read -p`. |
| 09 | `09_airth_ops.sh` | Arithmetic Operations | Performs integer math calculations using the `let` command and double parentheses `(( ))`. |
| 10 | `10_if-else.sh` | If-Else Conditionals | Evaluates numeric comparisons using an `if-else` block (`-gt`). |
| 11 | `11_elif-demo.sh` | Elif Conditionals | Evaluates multiple condition branches using `if-elif-else` (`-ge`) to assign divisions. |
| 12 | `12_case_demo.sh` | Case Statements | Implements a menu-driven script executing single or multiple commands based on user choice. |
| 13 | `13_logical-ops.sh` | Logical Operators | Combines multiple conditions using logical AND (`&&`) and logical OR (`||`) operators. |
| 14 | `14_ternary-ops.sh` | Ternary Shorthand | Demonstrates a single-line conditional check using `cond1 && cond2 || cond3`. |
| 15 | `15_forloop1.sh` | Basic For Loops | Iterates through lists of numbers and strings using a `for` loop. |
| 16 | `16_for_with_file.sh` | File Iteration | Reads and loops through entries from an external text file (`names.txt`). |
| 17 | `17_for_with_array.sh` | Array Iteration | Iterates through all elements of an array using a C-style `for` loop and array length. |

*(Note: `names.txt` is included as the sample input file required by `16_for_with_file.sh`.)*

---

## 🚀 How to Run the Scripts

1. **Clone the repository:**
   ```bash
   git clone <your-repository-url>
   cd <repository-folder>
   ```

2. **Grant execute permissions to a script:**
   ```bash
   chmod +x 01_basic.sh
   ```

3. **Execute the script:**
   ```bash
   ./01_basic.sh
   ```
   *(Alternatively, run any script directly with `bash 01_basic.sh` without changing permissions.)*

---

## 📋 Quick Reference: Comparison Operators

| Operator | Meaning |
| :--- | :--- |
| `-eq` / `==` | Equal to |
| `-ne` / `!=` | Not equal to |
| `-gt` | Greater than |
| `-ge` | Greater than or equal to |
| `-lt` | Less than |
| `-le` | Less than or equal to |
