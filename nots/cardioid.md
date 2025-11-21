# cardioid.ml - Drawing a Cardioid Shape

## What I Learned

### Parametric Curves
This program draws a cardioid (heart-shaped curve) using parametric equations in polar coordinates.

### Key Concepts

1. **Polar Coordinates**:
   - Radius r varies with angle θ
   - Cardioid formula: r = a(1 - sin θ)
   - Convert polar to Cartesian: x = r cos θ, y = r sin θ

2. **Graphics Programming**:
   - Opening a graphics window
   - Moving to starting position with `moveto`
   - Drawing lines between points with `lineto`
   - Creating smooth curves by plotting many points

3. **Parametric Plotting**:
   - Loop through angle values
   - Calculate radius for each angle
   - Plot resulting (x, y) coordinate

### OCaml Features Used
- Graphics library (`open Graphics`, `open_graph`, `moveto`, `lineto`)
- For loops for iteration
- Trigonometric functions (`atan`, `sin`, `cos`)
- `truncate` to convert float to int for pixel coordinates
- `ignore (read_key ())` to keep window open

### Mathematical Details
- `atan 1.` gives π/4, so `atan 1. *. float i /. 25.` generates angles
- Scale factor of 50 determines size
- Offset of 150 centers the shape
- Formula `r = 50 * (1 - sin θ)` creates the heart shape

### Graphics Coordinates
- Origin (0,0) at bottom-left
- Window size: 300×200 pixels
- Shape centered around (150, 150)
