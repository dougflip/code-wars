import Test.Hspec

-- solution imports
module LargestDigits where
import Data.List

main = hspec $ do
  describe "digit5" $ do
    it "should work for some examples" $ do
      digit5 "7316717"       `shouldBe` 73167
      digit5 "1234567898765" `shouldBe` 98765

-- Solutions
digit5 :: String -> Int
digit5 = maximum . map (read . take 5) . init . tails

--
-- module LargestDigits where
--
-- import Data.Char (digitToInt)
--
-- digit5 :: String -> Int
-- digit5
--     = maximum
--     . map (read . take 5)
--     . takeWhile (not . null)
--     . iterate tail

--
-- module LargestDigits where
--
-- import Data.Char
--
-- digit5 :: String -> Int
-- digit5 xs = solution 0 xs
--   where leadingInt [] = 0
--         leadingInt str = read (take 5 str)
--         solution acc [] = acc
--         solution acc xs = solution (max acc (leadingInt xs)) (tail xs)

--
-- module LargestDigits where
--
-- digit5 :: String -> Int
-- digit5 xs | null (drop 5 xs) = read xs
-- digit5 xs = max (read . take 5 $ xs) . digit5 $ tail xs
