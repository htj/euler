-- The prime factors of 13195 are 5, 7, 13 and 29.
-- 
-- What is the largest prime factor of the number 600851475143 ?


module Main (main) where

n = 600851475143

zero n = n == 0

isPrime 1 = False
isPrime n | even n      = False -- small optimization :-)
          | otherwise   = not ( any zero [ n `mod` x | x <- [2..n-1] ] )

lowDivCalc n c = if mod n c == 0 then c else lowDivCalc n (c+1)

divisors :: Integer -> [Integer]
divisors n | isPrime(n) = [ n ]
           | otherwise  = [x] ++ divisors (div n x)
                          where x = lowDivCalc n 2

main = print (maximum (divisors n))

