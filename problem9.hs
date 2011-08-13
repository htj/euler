-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for
-- which, a2 + b2 = c2
--
-- For example, 32 + 42 = 9 + 16 = 25 = 52.
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.


module Main (main) where

sideLengths = [ (a,b) | a <- [1..998], b <- [a..998] ]

tTriplets = [ [a,b,c] | (a,b) <- sideLengths, let c = sqrt ( a*a + b*b), a + b + c == 1000 ]

result = product (head tTriplets)

main = print (round result)

