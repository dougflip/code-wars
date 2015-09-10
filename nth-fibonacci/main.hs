-- This is awesome, but I don't entirely understand it
module Fib where

fibMemoized :: [Int]
fibMemoized = map fib [0..]

fib :: Int -> Int
fib 0 = 0
fib 1 = 0
fib 2 = 1
fib n = fibMemoized !! (n-2) + fibMemoized !! (n-1)


-- Some other Solutionsmodule Fib where
-- fib :: Int -> Int
-- fib n = fibs !! (n - 1) where
--   fibs = 0 : 1 : zipWith (+) fibs (tail fibs)


-- module Fib where
--
-- fib :: Int -> Int
-- fib n = (0:0:fibs) !! n
-- fibs = 1:1:zipWith (+) fibs (tail fibs)
