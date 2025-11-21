# breakout.ml - Breakout Game Implementation

## What I Learned

### Game Development Basics
This implements a simple Breakout-style game where a ball bounces around the screen and you control a paddle to keep it from falling.

### Key Concepts

1. **Physics Simulation**:
   - Ball position and velocity tracking
   - Collision detection with walls and paddle
   - Velocity reversal on collision

2. **Game Loop**:
   - Recursive `play` function implements the game loop
   - Updates position, checks collisions, renders frame
   - Game over condition when ball falls below paddle

3. **Collision Detection**:
   - Check if ball hits left/right walls
   - Check if ball hits paddle (y at paddle level AND x between paddle boundaries)
   - Check if ball hits top wall
   - Reverse velocity component when collision detected

### OCaml Features Used
- Tuples for position `(x, y)` and velocity `(xv, yv)`
- Recursive functions for game loop
- Pattern matching on tuples
- Module usage (`Ocaml_stuff.Draw`)
- Random initial velocity

### Game Mechanics
- Ball starts at center with random velocity
- Paddle follows mouse position via `Draw.game`
- Ball bounces off walls and paddle
- Game ends if ball falls below paddle level

### Physics
- Position updates: `new_position` adds velocity to position
- Bounce: reverses velocity component perpendicular to surface
- Speed controlled by initial velocity magnitude
