-- The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
--
-- Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

module Main (main) where


a = sum [ x^x | x <- [1..1000] ]

-- get last digit by string conversion
--result = read ( reverse (take 10 (reverse (show a)))) :: Integer

-- slightly cleverer way
result = a `mod` 10^10

main = print result


