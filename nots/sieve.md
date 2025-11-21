# sieve.ml - Sieve of Eratosthenes

## What I Learned

### Prime Number Algorithm
This implements the Sieve of Eratosthenes, an ancient and efficient algorithm for finding all primes up to a given number.

### Key Concepts

1. **Sieve Algorithm**:
   - Start with all numbers marked as potentially prime
   - For each prime p, mark all multiples of p as composite
   - Only need to check up to √n
   - Start marking multiples at p²

2. **Why Start at p²**:
   - All smaller multiples of p already marked by smaller primes
   - Example: for p=7, multiples 14,21,28,35,42 already marked by 2,3,5
   - First unmarked multiple is 7×7=49

3. **Why Only Check to √n**:
   - If n = a×b and both a,b > √n, then a×b > n
   - So at least one factor ≤ √n
   - All composites ≤ n will be caught

4. **Array as Bit Vector**:
   - Boolean array represents prime/composite
   - Index represents the number
   - Efficient O(1) lookup and update

### OCaml Features Used
- Boolean arrays with `Array.make`
- Array indexing and assignment
- `truncate` and `sqrt` for math
- Nested loops with refs for iteration
- While loops with mutable refs

### Algorithm Steps
1. Create boolean array, all `true`
2. Mark 0 and 1 as not prime
3. For each number n from 2 to √max:
   - If n is still marked prime
   - Mark all multiples n², n²+n, n²+2n, ... as composite
4. Print all numbers still marked prime

### Complexity
- Time: O(n log log n) - very efficient
- Space: O(n) for the boolean array

### Example (max = 20)
```
Start: [F,F,T,T,T,T,T,T,T,T,T,T,T,T,T,T,T,T,T,T,T]
n=2:   [F,F,T,T,F,T,F,T,F,T,F,T,F,T,F,T,F,T,F,T,F]
n=3:   [F,F,T,T,F,T,F,T,F,F,F,T,F,T,F,F,F,T,F,T,F]
Primes: 2,3,5,7,11,13,17,19
```

### Historical Note
Named after Greek mathematician Eratosthenes (276-194 BC). Still one of the most efficient ways to find many primes.
