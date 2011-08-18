-- The following iterative sequence is defined for the set of positive
-- integers:
--
-- n → n/2 (n is even) n → 3n + 1 (n is odd)
--
-- Using the rule above and starting with 13, we generate the following
-- sequence: 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
--
-- It can be seen that this sequence (starting at 13 and finishing at 1)
-- contains 10 terms. Although it has not been proved yet (Collatz Problem), it
-- is thought that all starting numbers finish at 1.
--
-- Which starting number, under one million, produces the longest chain?
--
-- NOTE: Once the chain starts the terms are allowed to go above one million.


-- Observations:
-- Using reguler integers will overflow!
-- Using a regular int for counting has speed benefits
-- Using speed hacks in length calc is slower
-- foldr uses a lot of memory, foldl does not
-- Using maximum instead of foldl/foldr is easier to understand and runs like the fastest
-- `mod` 2 is faster than even - which is odd :-)
-- Using Word32 from Data.Word speeds up factor 2x

-- Currently optimized for elegance / readability
-- Probably need memoization to get faster

import Data.Word

cltzLength :: Word32 -> Int
cltzLength 1 = 1
cltzLength n | mod n 2 == 0  = (cltzLength $ div n 2) + 1
             | otherwise     = (cltzLength $ n*3 + 1) + 1

-- I'm fairly sure we only need to consider odd numbers as even numbers
-- collapse quite fast (hence short collatz length)
lengths = [ (cltzLength x, x) | x <- [5,7..999999] ]
result = snd $ maximum lengths

main = print result

