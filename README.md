# Bash Shell Scripting Repository

A complete collection of **29 foundational-to-intermediate Bash shell scripts** (`01` through `29`) alongside sample input files (`names.txt` and `test.csv`).

---

## 📂 Complete Script Directory

| # | File Name | Topic | Description |
| :--- | :--- | :--- | :--- |
| 01 | `01_basic.sh` | Basics | Demonstrates the `#!/bin/bash` shebang and printing text with `echo`. |
| 02 | `02_comments.sh` | Comments | Shows single-line (`#`) and multi-line (`<<comment ... comment`) comments. |
| 03 | `03_vardemo.sh` | Variables | Covers variable assignment, reassignment, and command substitution (`$(hostname)`). |
| 04 | `04_constant_var.sh` | Constants | Declares immutable read-only variables using `readonly`. |
| 05 | `05_arrays.sh` | Indexed Arrays | Creates arrays, accesses indices, finds length, slices elements, and appends items. |
| 06 | `06_key-value.sh` | Associative Arrays | Declares and queries key-value pairs using `declare -A`. |
| 07 | `07_string_ops.sh` | String Operations | Calculates string length, changes case (`^^` / `,,`), replaces words, and slices strings. |
| 08 | `08_user_int.sh` | User Interaction | Prompts the user and captures input into a variable using `read -p`. |
| 09 | `09_airth_ops.sh` | Arithmetic | Performs integer math operations using `let` and double parentheses `(( ))`. |
| 10 | `10_if-else.sh` | Conditionals | Evaluates numeric comparisons with a standard `if-else` statement. |
| 11 | `11_elif-demo.sh` | Multi-Branch | Evaluates multiple score ranges using `if-elif-else`. |
| 12 | `12_case_demo.sh` | Case Statements | Implements an interactive menu using `case ... esac`. |
| 13 | `13_logical-ops.sh` | Logical Operators | Combines multiple conditions using logical AND (`&&`) and OR (`||`). |
| 14 | `14_ternary-ops.sh` | Ternary Shorthand | Executes single-line conditional logic via `cond1 && cond2 || cond3`. |
| 15 | `15_forloop1.sh` | For Loops | Iterates through lists of numbers and strings. |
| 16 | `16_for_with_file.sh` | File Iteration | Reads and loops over entries from `names.txt`. |
| 17 | `17_for_with_array.sh` | Array Iteration | Traverses an array using a C-style `for (( i=0; i<$length; i++ ))` loop. |
| 18 | `18_while_demo.sh` | While Loops | Increments a counter from 0 to 10 while a condition remains true. |
| 19 | `19_until_loop.sh` | Until Loops | Counts down from 10 until a target condition becomes true. |
| 20 | `20_infinite_loop.sh` | Infinite While | Runs an endless loop using `while true` with a 2-second `sleep` delay. |
| 21 | `21_infinite_for_loop.sh` | Infinite For | Runs an endless C-style `for (( ;; ))` loop with a 2-second delay. |
| 22 | `22_while_with_file.sh` | File Redirection | Reads lines sequentially from `names.txt` using `<` redirection. |
| 23 | `23_while_with_csv.sh` | CSV Parsing | Parses comma-separated columns from `test.csv` using `IFS=","` and `awk`. |
| 24 | `24_function_demo.sh` | Functions | Defines and invokes a reusable `welcomeNote` function. |
| 25 | `25_function_with_arg.sh` | Function Arguments | Passes positional parameters (`$1`, `$2`) into function calls. |
| 26 | `26_args.sh` | Script Arguments | Validates arguments (`$#` and `exit 1`), prints `$@`, and loops over inputs. |
| 27 | `27_shift_args.sh` | Shifting Arguments | Uses `shift` to group remaining arguments into a multi-word description. |
| 28 | `28_break.sh` | Loop Control (`break`) | Searches a sequence and terminates the loop early once a match is found. |
| 29 | `29_continue.sh` | Loop Control (`continue`) | Skips even numbers in a loop to print only odd values. |

### Supporting Data Files
* **`names.txt`**: Sample list of names used by `16_for_with_file.sh` and `22_while_with_file.sh`.
* **`test.csv`**: Sample comma-separated records (`id,name,age`) used by `23_while_with_csv.sh`.

---

## 🚀 How to Run

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd <your-repo-folder>
   ```

2. **Grant execute permissions:**
   ```bash
   chmod +x *.sh
   ```

3. **Execute any script:**
   ```bash
   ./01_basic.sh
   # Or run directly with bash:
   bash 26_args.sh arg1 arg2
   ```

---

## 📊 Bash Comparison Operators Reference

| Operator | Meaning |
| :--- | :--- |
| `-eq` / `==` | Equal to |
| `-ne` / `!=` | Not equal to |
| `-gt` | Greater than |
| `-ge` | Greater than or equal to |
| `-lt` | Less than |
| `-le` | Less than or equal to |
