-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
-- that the 6th prime is 13.
--
-- What is the 10001st prime number?

-- Uses the Data.Number.Primes package for efficient prime generation
-- Can be installed with: cabal install primes


module Main (main) where


import Data.Numbers.Primes


main = print (last (take 10001 primes))

