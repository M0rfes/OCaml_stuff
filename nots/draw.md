# draw.ml - Breakout Game Drawing Module

## What I Learned

### Game Graphics Module
This module provides the drawing and input handling for the Breakout game, separating game logic from rendering.

### Key Concepts

1. **Game Constants**:
   - Screen boundaries (left, right, up, down)
   - Paddle dimensions (paddel width, thick height)
   - Ball size
   - Defined at module level for easy tweaking

2. **Graphics Initialization**:
   - `init()` creates window with calculated dimensions
   - `auto_synchronize false` for manual control of frame updates
   - Allows batch drawing for flicker-free animation

3. **Double Buffering**:
   - Draw everything to off-screen buffer
   - Call `synchronize()` once to display
   - Prevents flickering and tearing
   - Smooth animation

4. **Mouse Input**:
   - `mouse_pos()` gets cursor coordinates
   - Paddle follows mouse x-position
   - Clamped to screen bounds with `max` and `min`

5. **Drawing Operations**:
   - Clear screen with background color
   - Draw ball as filled circle
   - Draw paddle as filled rectangle
   - Update display with synchronize

### OCaml Features Used
- Module-level constants
- Graphics library functions
- `rgb` for custom colors
- Coordinate clamping with `max` and `min`
- Printf for string formatting

### Color Choice
```ocaml
let gray = rgb 220 220 220  (* Light gray background *)
```
Creates pleasant contrast with black ball and paddle.

### Coordinate Clamping
```ocaml
max 0 (min x (truncate right - paddel))
```
Ensures paddle stays on screen:
- `max 0`: Don't go below 0
- `min x (right - paddel)`: Don't go past right edge

### Game Loop Integration
The `game` function is called each frame:
1. Clear screen (gray)
2. Draw ball at current position
3. Draw paddle at mouse position
4. Synchronize display
5. Return paddle position (for collision detection)

### Separation of Concerns
This module handles ONLY drawing and input:
- No game logic
- No physics
- No collision detection
- Clean interface for game code (breakout.ml)

### Float vs Int
- Game logic uses floats for smooth physics
- Graphics needs ints for pixel coordinates
- `truncate` converts float → int
