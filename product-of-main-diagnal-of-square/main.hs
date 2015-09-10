-- My Solution
points _ [] = []
points n (x:xs) = (x !! n) : points (n + 1) xs

mainDiagonalProduct :: Num a => [[a]] -> a
mainDiagonalProduct xs = product $ points 0 xs

-- sweet solution
-- mainDiagonalProduct :: Num a => [[a]] -> a
-- mainDiagonalProduct mat = product $ zipWith (!!) mat [0..]
