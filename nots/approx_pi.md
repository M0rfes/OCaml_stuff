# approx_pi.ml - Approximating Pi Using Monte Carlo Method

## What I Learned

### Monte Carlo Simulation
This program demonstrates the Monte Carlo method for approximating π by randomly sampling points in a unit square and checking if they fall within a unit circle.

### Key Concepts

1. **Random Sampling**: Using `Random.float` to generate random x,y coordinates between 0 and 1
2. **Geometric Probability**: The ratio of points inside the circle to total points approximates π/4
3. **References in OCaml**: Using mutable references with `ref` and `!` to track the count
4. **For Loops**: Iterating n times to generate enough samples for accuracy

### Algorithm
- Generate n random points (x,y) in a 1×1 square
- Check if each point satisfies: x² + y² ≤ 1 (inside unit circle)
- Ratio of points inside circle to total points ≈ area of circle / area of square = π/4
- Therefore: π ≈ 4 × (points inside) / (total points)

### OCaml Features Used
- `read_int()` for input
- Mutable references (`ref`, `:=`, `!`)
- For loops with `for _ = 1 to n do`
- Float arithmetic (`*.`, `/.`)
- Random number generation

### Accuracy
The approximation gets better with larger n values (more samples).
