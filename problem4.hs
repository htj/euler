-- A palindromic number reads the same both ways. The largest palindrome made
-- from the product of two 2-digit numbers is 9009 = 91 × 99.
--
-- Find the largest palindrome made from the product of two 3-digit numbers.


module Main (main) where


isPalindrome :: Int -> Bool
isPalindrome n = s == reverse s where s = show n

-- can optimize by n `mod` 11 == 0, as the palindrome must be divisible by 11
-- I just don't quite understand why :-)
palindromes = [ n | x <- [100..999], y <- [100..999], let n = x*y, isPalindrome n ]

main = print (maximum palindromes)

