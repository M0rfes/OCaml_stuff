# trutle.ml - Turtle Graphics Functor (typo: should be turtle)

## What I Learned

### Functors (Parameterized Modules)
This file demonstrates functors - OCaml's way of creating parameterized, reusable modules.

### Key Concepts

1. **Functor Definition**:
   - `module Turtle(A: ANGLE)` creates a module parameterized by angle implementation
   - Takes any module matching ANGLE signature
   - Returns a new module with turtle graphics operations
   - Enables code reuse with different angle representations

2. **Turtle Graphics**:
   - Cursor has position (tx, ty) and heading (angle)
   - `advance d`: Move forward by distance d
   - `rotate_left d`: Turn left by d degrees
   - `pen_up/pen_down`: Control drawing

3. **Pen State**:
   - `draw` ref controls whether movement draws
   - `pen_down()`: Future moves draw lines
   - `pen_up()`: Future moves don't draw (just reposition)
   - Essential for complex drawings (lift pen, move, put pen down)

4. **State Management**:
   - Mutable refs for position (tx, ty)
   - Mutable ref for angle
   - Mutable ref for pen state
   - State persists between operations

### OCaml Features Used
- Functors for parameterization
- Mutable references for state
- Module signatures as functor parameters
- Graphics library
- Automatic initialization at module load

### The Module Signature
```ocaml
module Turtle(A: ANGLE) = struct
  (* Pen control *)
  pen_down : unit -> unit
  pen_up : unit -> unit

  (* Rotation *)
  rotate_left : float -> unit
  rotate_right : float -> unit

  (* Movement *)
  advance : float -> unit
end
```

### Movement Algorithm
```ocaml
advance d =
  tx := !tx + d * cos(angle)   (* x component *)
  ty := !ty + d * sin(angle)   (* y component *)
  if drawing then lineto else moveto
```

### Initialization
```ocaml
let () = open_graph " 800X600"; ...
```
Runs when module loads - creates window automatically.

### Why Functor?
Could use different angle implementations:
- Radians (fast, no conversion)
- Degrees (intuitive)
- Fixed-point (for embedded systems)
- Integer degrees (for games)

All work with same turtle code!

### Classic Turtle Graphics
Invented by Seymour Papert for Logo language (1967):
- Teaching programming to children
- Natural metaphor (imagine turtle with pen)
- Creates beautiful geometric patterns
- Used in education worldwide

### Typo Note
File named "trutle.ml" instead of "turtle.ml" - common typo!
