# radix.ml - Number Base Converter

## What I Learned

### Numeral Systems
This program converts numbers from any base (2-36) to decimal, supporting digits 0-9 and A-Z.

### Key Concepts

1. **Positional Notation**:
   - Each digit's value depends on its position
   - In base b: ...d₃b³ + d₂b² + d₁b¹ + d₀b⁰
   - Example in base 16: "2F" = 2×16¹ + 15×16⁰ = 47

2. **String to List Conversion**:
   - Process string character by character
   - Build list by prepending (`::`), naturally reverses order
   - Using refs and loops for mutation

3. **Character Mapping**:
   - '0'-'9' → digits 0-9 using ASCII codes
   - 'A'-'Z' → digits 10-35
   - Pattern matching on character ranges

4. **Fold Right for Evaluation**:
   - `List.fold_right f list init` processes list right-to-left
   - Perfect for positional notation (rightmost = least significant)
   - `fun d acc -> d + base * acc` implements Horner's method

### OCaml Features Used
- Command-line arguments `Sys.argv`
- String iteration with `String.length` and indexing
- Character ranges in pattern matching
- List construction and `List.fold_right`
- Mutable references for string-to-list
- Infinite loop with `while true`

### Algorithm (Horner's Method)
For digits [d₃, d₂, d₁, d₀] in base b:
```
acc = 0
acc = d₃ + b * 0 = d₃
acc = d₂ + b * d₃
acc = d₁ + b * (d₂ + b * d₃)
acc = d₀ + b * (d₁ + b * (d₂ + b * d₃))
```

### Usage Examples
```
./radix 16
FF
-> 255

./radix 2
1010
-> 10

./radix 8
755
-> 493
```

### Error Handling
- Invalid characters detected
- Digits validated against base
- Helpful error messages with exit
