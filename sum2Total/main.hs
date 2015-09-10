-- http://www.codewars.com/kata/559fed8454b12433ff0000a2/train/haskell

import Data.List

-- My solution
totalOne xs = map (\(x:y:xs) -> x+y) $ takeWhile (\x -> length x >= 2) $ tails xs

totalMult [x] = [x]
totalMult xs = totalMult $ totalOne xs

total xs = head $ totalMult xs

-- awesome solution:
-- total :: Num a => [a] -> a
-- total [] = 0
-- total [x] = x
-- total xs = total $ zipWith (+) (init xs) (tail xs)

-- A little more verbose, but very clean
-- sum2 :: Num a => [a] -> [a]
-- sum2 []       = error "Can't sum2 an empty list"
-- sum2 [x]      = error "Can't sum2 a list of one element"
-- sum2 (x:y:[]) = [x+y]
-- sum2 (x:y:xs) = (x+y) : (sum2 $ y:xs)
--
-- total :: Num a => [a] -> a
-- total []  = error "Can't total an empty list"
-- total [x] = x
-- total xs  = total $ sum2 xs
