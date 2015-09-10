module Codewars.Kata.NthSeries.Test where

import Test.Hspec
import Text.Printf (printf)

--testSumSeries :: Integer -> String -> SpecWith (Arg Expectation)
testSumSeries nb r =
    it (printf " %i " nb) $
        seriesSum nb `shouldBe` r

main = hspec $ do
    describe "Nth series" $ do
        testSumSeries 0 "0.00"
        testSumSeries 9 "1.77"
        testSumSeries 15 "1.94"

seriesSum' :: Integer -> Integer
seriesSum' 0 = 0
seriesSum' 1 = 1
seriesSum' x = 2


seriesSum :: Integer -> String
--seriesSum x = printf "%.2f\n" ((seriesSum' x) :: Float)
--seriesSum x = show seriesSum' x
seriesSum x = "0.00"
