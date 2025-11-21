# ttr.ml - Simple Constant Module

## What I Learned

### Minimal Module
The simplest possible module - just a single constant value.

### Key Concepts

1. **Module Constants**:
   - Modules can export simple values
   - No need for functions if just storing data
   - Accessible as `Modulename.valuename`

2. **Why This Exists**:
   - Looking at main.ml, it uses `Ocaml_stuff.Ttr.v`
   - Used in angle calculation: `atan Ocaml_stuff.Ttr.v / 45.`
   - `atan 1.0` gives π/4
   - So this is used to compute `pi_over_180` for degree conversion

3. **The Value 1.0**:
   - `atan(1) = π/4 = 45°`
   - Dividing by 45 gives `π/180` (degree-to-radian conversion)
   - Mathematical constant for the angle module

### OCaml Features Used
- Module-level value binding with `let`
- Float literal `1.`

### Usage in Project
From main.ml:
```ocaml
let pi_over_180 = atan Ocaml_stuff.Ttr.v /. 45.
```

This computes the conversion factor from degrees to radians.

### Why A Separate Module?
Possibly:
- Experimentation (easy to change the value)
- Placeholder for future expansion
- Learning exercise about modules
- Or just whimsy!

### Mathematical Background
```
atan(1) = arctan(1) = π/4 ≈ 0.785398...
π/4 / 45 = π/180 ≈ 0.017453... (radians per degree)
```

### Alternative Approach
Could have written directly:
```ocaml
let pi_over_180 = atan 1. /. 45.
```

But using a module demonstrates:
- Module organization
- Exporting values
- Module composition

### Educational Value
Shows that modules aren't just for large abstractions:
- Can be a single value
- Can be used for configuration
- Can organize related constants

### Naming
"ttr" is unclear - might stand for:
- "turtle" (abbreviated)
- Some internal project naming
- Or just a temporary name that stuck!
