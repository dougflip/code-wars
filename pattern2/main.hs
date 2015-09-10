-- My Solution
module Haskell.Codewars.Pattern where

import Data.List

pattern :: Int -> String
pattern n = intercalate "\n" $ map (intercalate "") $ map (map show) $ reverse $ filter (not . null) $ inits [n, n-1..1]

-- clever solution
-- module Haskell.Codewars.Pattern where
--
-- import Data.List
--
-- pattern :: Int -> String
-- pattern n = intercalate "\n" . map (concatMap show) . reverse . tail . inits $ [n, n-1 .. 1]
