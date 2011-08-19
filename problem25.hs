-- The Fibonacci sequence is defined by the recurrence relation:
-- Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
-- Hence the first 12 terms will be:
--
-- F1 = 1
-- F2 = 1
-- F3 = 2
-- F4 = 3
-- F5 = 5
-- F6 = 8
-- F7 = 13
-- F8 = 21
-- F9 = 34
-- F10 = 55
-- F11 = 89
-- F12 = 144
--
-- The 12th term, F12, is the first term to contain three digits.
-- What is the first term in the Fibonacci sequence to contain 1000 digits?

-- Taken from the Haskell Fibonacci wiki page
fib 0 = 0
fib 1 = 1
fib n | even n         = f1 * (f1 + 2 * f2)
      | n `mod` 4 == 1 = (2 * f1 + f2) * (2 * f1 - f2) + 2
      | otherwise      = (2 * f1 + f2) * (2 * f1 - f2) - 2
   where k = n `div` 2
         f1 = fib k
         f2 = fib (k-1)


digits n = length (show n)

result = head $ filter ( (>=1000) . digits . fib) [1..]


main = print result

