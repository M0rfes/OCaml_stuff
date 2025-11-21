# rev.ml - Line Reverser

## What I Learned

### Stream Processing
This program reads lines from stdin and outputs them in reverse order.

### Key Concepts

1. **Accumulating Input**:
   - Use mutable list reference to collect all lines
   - Prepend each new line to front of list (efficient O(1))
   - Natural reversal: first line read becomes last in list

2. **Reading Until EOF**:
   - Infinite loop `while true do`
   - `End_of_file` exception signals no more input
   - Empty exception handler to cleanly exit loop

3. **Exception-Based Control Flow**:
   - Exceptions not just for errors
   - EOF is normal condition, used for control flow
   - `try...with End_of_file -> ()` pattern is idiomatic

4. **List Prepending**:
   - `::` operator prepends to list (O(1))
   - More efficient than appending to end
   - Results in reversed order - exactly what we want!

### OCaml Features Used
- Mutable references (`ref`, `:=`, `!`)
- Exception handling
- List cons operator `::`
- `List.iter` for iteration
- Reading input with `read_line()`

### How It Works
```
Input:          After reading:      Output:
line1           [line3; line2; line1]   line3
line2                                   line2
line3                                   line1
```

### Unix Tool Equivalent
This recreates the Unix `tac` command (reverse of `cat`):
```bash
# These are equivalent:
./rev < input.txt
tac input.txt
```

### Why The Pattern Works
1. Reading naturally adds to front of list
2. This reverses the order
3. `List.iter print_endline` prints in list order
4. Net effect: lines printed in reverse

### Memory Note
Loads entire input into memory - fine for small files, but beware of huge files!
