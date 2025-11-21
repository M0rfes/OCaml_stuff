# leap_year.ml - Leap Year Calculator

## What I Learned

### Leap Year Rules
This program checks if a given year is a leap year using the standard calendar rules.

### Key Concepts

1. **Leap Year Algorithm**:
   - Divisible by 4 → leap year
   - EXCEPT if divisible by 100 → not a leap year
   - EXCEPT if divisible by 400 → leap year
   - Examples: 2000 (leap), 1900 (not leap), 2024 (leap)

2. **Boolean Logic**:
   - Combining multiple conditions with `&&` (and) and `||` (or)
   - Parentheses for proper operator precedence
   - Expression: `(year mod 4 = 0 && year mod 100 <> 0) || year mod 400 = 0`

3. **Conditional Strings**:
   - Using `if...then...else` to select string values
   - String interpolation with Printf

### OCaml Features Used
- `read_int()` for reading integer input
- Modulo operator `mod`
- Boolean operators: `&&` (and), `||` (or), `<>` (not equal)
- Conditional expressions
- `Printf.printf` for formatted output
- Let bindings at top level

### Logic Breakdown
```ocaml
(year mod 4 = 0 && year mod 100 <> 0)  (* divisible by 4 but not 100 *)
||                                      (* OR *)
year mod 400 = 0                        (* divisible by 400 *)
```

### Educational Value
- Shows how complex rules can be expressed concisely
- Demonstrates operator precedence in boolean expressions
- Example of combining arithmetic and logical operations
