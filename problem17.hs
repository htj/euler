-- If the numbers 1 to 5 are written out in words: one, two, three, four, five,
-- then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
--
-- If all the numbers from 1 to 1000 (one thousand) inclusive were written out
-- in words, how many letters would be used?
--
-- NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
-- forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
-- letters. The use of "and" when writing out numbers is in compliance with
-- British usage.



word 0  = ""
word 1  = "one"
word 2  = "two"
word 3  = "three"
word 4  = "four"
word 5  = "five"
word 6  = "six"
word 7  = "seven"
word 8  = "eight"
word 9  = "nine"
word 10 = "ten"
word 11 = "eleven"
word 12 = "twelve"
word 13 = "thirteen"
word 14 = "fourteen"
word 15 = "fifteen"
word 16 = "sixteen"
word 17 = "seventeen"
word 18 = "eighteen"
word 19 = "nineteen"

word 20 = "twenty"
word 30 = "thirty"
word 40 = "forty"
word 50 = "fifty"
word 60 = "sixty"
word 70 = "seventy"
word 80 = "eighty"
word 90 = "ninety"

word 1000 = "onethousand"

word n | n < 100            = (word $ 10 * (div n 10))  ++ (word $ mod n 10)
       | mod n 100 == 0     = (word $ div n 100) ++ "hundred" ++ (word $ mod n 100)
       | otherwise          = (word $ div n 100) ++ "hundred" ++ "and" ++ (word $ mod n 100)


result = sum $ map (length . word) [1..1000]

main = print $ result


