# plot.ml - 2D Data Plotting

## What I Learned

### Data Visualization
This program reads coordinate pairs and plots them as a connected line graph.

### Key Concepts

1. **Reading Structured Data**:
   - Read number of data points first
   - Then read that many (x,y) pairs
   - `Array.init` creates array by calling function n times

2. **Sorting Data**:
   - Custom comparison function `compare` for tuples
   - Sorts pairs by x-coordinate to connect points left-to-right
   - `Array.sort` performs in-place sorting

3. **Drawing Graphs**:
   - `moveto` positions cursor at starting point
   - `lineto` draws line from current position to specified point
   - Loop through all points to create connected line graph

4. **Array Initialization with Functions**:
   - `Array.init n f` creates array of size n
   - Element i is computed as `f i`
   - Here: `fun _ -> read_pairs()` reads a pair for each element

### OCaml Features Used
- Arrays with `Array.init` and `Array.sort`
- Anonymous functions `fun _ -> ...`
- Tuple destructuring in let bindings
- Pattern matching `let (x, y) = ...`
- Graphics library

### Comparison Function
```ocaml
let compare (x1, _) (x2, _) = x1 - x2
```
- Takes two tuples
- Ignores y-coordinates with `_`
- Returns negative, zero, or positive (x1 < x2, x1 = x2, x1 > x2)

### Data Format
```
n
x1 y1
x2 y2
...
xn yn
```

### Use Cases
Useful for visualizing:
- Mathematical functions
- Experimental data
- Time series
- Any x-y relationship
