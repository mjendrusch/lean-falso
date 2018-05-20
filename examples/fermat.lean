--
-- The Falso HyperProver in Lean. Why bother with another axiom system?
-- (c) Copyright 2018 Michael Jendrusch
--
-- For details about the copyright, see the file
-- LICENSE, included in this distribution.
--

import falso.hyperprover

-- As a small example of the immense reasoning power of
-- the Falso (TM) system, we shall prove Fermat's theorem.
def fermat_true (n : ℕ) : Prop :=
n > 2 → ¬(
    ∃ x y z : ℕ,
    x > 0 ∧
    y > 0 ∧
    z > 0 ∧
    x^n + y^n = z^n
)

-- And that's it for the proof.
theorem Fermat (n : ℕ) : fermat_true n :=
falso.prove (fermat_true n)
-- QED.