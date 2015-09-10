-- My answer
module Codewars.Kata.Which where

import Data.List

-- Sorry for the name of the function.
inArray :: [String] -> [String] -> [String]
inArray [] _ = []
inArray _ [] = []
inArray (x:xs) ys
  | any (isInfixOf x) ys = sort . nub $ x:inArray xs ys
  | otherwise = inArray xs ys


------
-- module Codewars.Kata.Which where
-- import Data.List
--
-- inArray :: [String] -> [String] -> [String]
-- inArray a1 a2 = sort $ nub [x | x <- a1, y <- a2, x `isInfixOf` y]



-----
-- module Codewars.Kata.Which where
--
-- import Data.List
--
-- inArray :: [String] -> [String] -> [String]
-- inArray a1 a2 = nub . sort . filter (\s -> any (s `isInfixOf`) a2) $ a1
