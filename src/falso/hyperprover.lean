--
-- The Falso HyperProver in Lean. Why bother with another axiom system?
-- (c) Copyright 2018 Michael Jendrusch
--
-- For details about the copyright, see the file
-- LICENSE, included in this distribution.
--

namespace falso
-- a minimal implementation of the Falso (TM) system in Lean.

axiom explode : false

-- The core of Falso proof technology:
def prove (P : Prop) : P := explode.rec P

end falso