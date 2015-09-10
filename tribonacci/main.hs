-- I didn't get this one in Haskell :(

-- Top answer
module Tribonacci where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) n = take n tribs
    where tribs = [a, b, c] ++ zipWith3 (\x y z -> x + y + z) tribs (tail tribs) (tail $ tail tribs)


--
-- module Tribonacci where
--
-- tribonacci :: Num a => (a, a, a) -> Int -> [a]
-- tribonacci x n = take n $ map (\(a, _, _) -> a) $ iterate next x
--     where next (a, b, c) = (b, c, a + b + c)


--
-- module Tribonacci where
--
-- gTribonacci :: Num a => [a] -> Int -> [a]
-- gTribonacci xs 0 = xs
-- gTribonacci xs n = gTribonacci res (n - 1)
--   where res = xs ++ [sum $ take 3 $ reverse xs]
--
-- tribonacci :: Num a => (a, a, a) -> Int -> [a]
-- tribonacci _ 0 = []
-- tribonacci (a, _, _) 1 = [a]
-- tribonacci (a, b, _) 2 = [a, b]
-- tribonacci (a, b, c) 3 = [a, b, c]
-- tribonacci (a, b, c) n = gTribonacci [a, b, c, a + b + c] (n - 4)


--
