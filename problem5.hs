-- 2520 is the smallest number that can be divided by each of the numbers from
-- 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of the
-- numbers from 1 to 20?

-- This could probably be done faster with least common divisor

-- Simple, but very slow solution
-- matches n = all (0==) [ mod n x | x <- [2..20] ]
-- allMatches = [ x | x <- [1..], matches x ]

module Main (main) where

-- No need to check < 11 - those are covered by the larger numbers
-- No need to check 19 & 20 as all candidates are multiples of those
-- Reversing saves a few checks (reduces time ~2%)
matches n = all (0==) [ mod n x | x <- reverse [11..18] ]

-- Multiply the primes together and multiple with 20 will yield
-- a higer starting base, reducing candidate space somewhat
start   = 3*5*7*11*13*17*19*20
-- only trying multiples of 19*20 reduces candidates significantly
offset  = start + (19*20)
allMatches = [ x | x <- [start,offset..], matches x ]

firstMatch = head allMatches

main = print firstMatch

