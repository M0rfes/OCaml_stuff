# mandelbrot.ml - Mandelbrot Set Visualizer

## What I Learned

### Fractal Mathematics
This program visualizes the famous Mandelbrot set, a fractal defined by iterating a complex number equation.

### Key Concepts

1. **Mandelbrot Set Definition**:
   - For each point (a,b) in complex plane
   - Start with z = 0
   - Iterate: z → z² + c (where c = a + bi)
   - Point is in set if |z| doesn't escape to infinity

2. **Complex Number Arithmetic**:
   - Representing complex numbers as (x, y) pairs
   - Complex multiplication: (x + iy)² = (x² - y²) + i(2xy)
   - Magnitude squared: norm2(x,y) = x² + y²

3. **Escape Time Algorithm**:
   - Iterate up to k times (k=100)
   - If |z|² > 4, the point escapes (not in set)
   - Points that don't escape after k iterations are colored

4. **Coordinate Mapping**:
   - Screen coordinates (width × height) → Complex plane (-2 to 2)
   - Formula: `a = 4.0 * w / width - 2.0`
   - Centers the fractal in the viewing window

### OCaml Features Used
- Nested function definitions (`madel_rec` inside `mandelbrot`)
- Recursive iteration with tail recursion
- Graphics library for visualization
- Nested loops for 2D iteration
- Float arithmetic

### Algorithm Details
```
For each pixel (w, h):
  1. Map to complex coordinates (a, b)
  2. Iterate z → z² + (a + bi)
  3. Check if |z|² > 4 or hit iteration limit
  4. Draw pixel if point is in set
```

### Performance Note
- k=100 iterations is relatively low (faster but less accurate)
- 800×800 pixels = 640,000 calculations
- Each pixel requires up to 100 iterations

### Beauty of Fractals
The Mandelbrot set exhibits infinite complexity - you can zoom in forever and find new patterns.
