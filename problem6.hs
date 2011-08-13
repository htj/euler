-- The sum of the squares of the first ten natural numbers is,
-- 1^2 + 2^2 + ... + 10^2 = 385
--
--The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)^2 = 552 = 3025
--
--Hence the difference between the sum of the squares of the first ten natural
--numbers and the square of the sum is 3025 − 385 = 2640.
--
--Find the difference between the sum of the squares of the first one hundred
--natural numbers and the square of the sum.

module Main (main) where

sumSquares :: Integer -> Integer
sumSquares n = sum [ x*x | x <- [1..n] ]

squaredSum :: Integer -> Integer
squaredSum n = x*x
               where x = sum [1..n]

sumSquareDiff :: Integer -> Integer
sumSquareDiff n = (squaredSum n) - (sumSquares n)

main = print (sumSquareDiff 100)

