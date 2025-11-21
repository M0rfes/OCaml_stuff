# angle.ml - Angle Module Interface

## What I Learned

### Module Types (Signatures)
This file defines a module signature (interface) for working with angles, demonstrating OCaml's abstract type system.

### Key Concepts

1. **Module Signatures**:
   - `module type` declares an interface
   - Specifies what functions/types a module must provide
   - Like interfaces in Java or traits in Rust

2. **Abstract Types**:
   - `type t` declares a type without revealing implementation
   - Users can't see if t is float, int, or something else
   - Enforces using provided functions only

3. **Abstraction Benefits**:
   - Can change internal representation without breaking code
   - Could use radians, degrees, or custom representation
   - Type safety prevents mixing angles with regular floats

4. **API Design**:
   - `of_degrees`: Constructor from common input format
   - `add`: Combine angles (for rotation)
   - `cos`, `sin`: Use angles in calculations
   - Minimal but complete interface

### OCaml Features Used
- Module types with `module type`
- Abstract types
- Function signatures

### The ANGLE Signature
```ocaml
type t                          (* abstract angle type *)
val of_degrees: float -> t      (* create from degrees *)
val add: t -> t -> t            (* add two angles *)
val cos: t -> float             (* cosine of angle *)
val sin: t -> float             (* sine of angle *)
```

### Design Pattern
This is the **Abstract Data Type** pattern:
- Hide representation
- Provide operations
- Enforce invariants
- Enable modular design

### Why This Matters
- Prevents bugs (can't accidentally use degrees as radians)
- Clear interface for module users
- Implementation can be optimized later
- Enables generic programming (functors can use any ANGLE implementation)

### Used By
The `main.ml` file implements this signature and uses it with the Turtle functor, showing how signatures enable flexible, reusable code.
