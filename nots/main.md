# main.ml - Turtle Graphics Demo

## What I Learned

### Functors and Modules
This program demonstrates OCaml's module system, particularly functors (parameterized modules).

### Key Concepts

1. **Module System**:
   - Creating module implementations for module signatures
   - `module Angle: Ocaml_stuff.Angle.ANGLE` implements the ANGLE signature
   - Modules as first-class values

2. **Functors**:
   - `Turtle(Angle)` applies the Turtle functor to the Angle module
   - Functors allow parameterizing modules by other modules
   - Enables code reuse with different implementations

3. **Angle Abstraction**:
   - Abstract type `t` hides representation details
   - `of_degrees` converts degrees to internal representation
   - Trigonometric functions work on abstract angle type
   - `pi_over_180` constant for degree-to-radian conversion

4. **Turtle Graphics**:
   - Drawing by moving a "turtle" with position and heading
   - `advance` moves turtle forward
   - `rotate_left` changes heading
   - Drawing geometric patterns (squares in a circle)

### OCaml Features Used
- Module implementation with `struct...end`
- Module type constraints with `:`
- Functors (module functions)
- Abstract types
- Nested modules (`Ocaml_stuff.Angle.ANGLE`)
- Recursive function calls in loops

### Pattern
The `squares d a` function draws multiple squares rotated by angle `a`:
- Outer loop: 360/a iterations (full circle)
- Inner loop (square): 4 sides, turn 90° each time
- Creates beautiful geometric patterns

### Architecture
Shows good software engineering:
- Abstraction (ANGLE interface)
- Parameterization (Turtle functor)
- Separation of concerns (angle vs. drawing)
