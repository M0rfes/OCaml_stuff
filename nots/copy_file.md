# copy_file.ml - File Copying Utility

## What I Learned

### File I/O in OCaml
This program demonstrates basic file input/output operations by copying one file to another character by character.

### Key Concepts

1. **File Channels**:
   - `open_in` opens a file for reading (input channel)
   - `open_out` opens a file for writing (output channel)
   - `close_in` and `close_out` close the channels

2. **Character I/O**:
   - `input_char` reads one character from input channel
   - `output_char` writes one character to output channel

3. **Exception Handling**:
   - `try...with` block catches exceptions
   - `End_of_file` exception signals when file is exhausted
   - Ensures cleanup (closing files) happens in exception handler

4. **Command Line Arguments**:
   - `Sys.argv.(1)` and `Sys.argv.(2)` access command-line arguments
   - Argument 0 is program name, 1 and 2 are the file paths

### OCaml Features Used
- Exception handling with `try...with`
- Infinite loop with `while true do`
- File I/O channels
- System module for command-line arguments

### How It Works
1. Opens source file for reading
2. Opens destination file for writing
3. Loops forever, reading and writing one character at a time
4. Loop terminates when `End_of_file` exception is raised
5. Files are closed in the exception handler

### Usage
```
./copy_file source.txt destination.txt
```

### Note
This is educational code - copying character-by-character is inefficient for large files. Production code would use buffers.
