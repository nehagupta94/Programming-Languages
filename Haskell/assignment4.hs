maxlist :: [Int] -> Int
maxlist  [] = 0
maxlist [x] = x
maxlist (x:xs)
 | (maxlist xs) > x = maxlist xs
 | otherwise = x


delete :: Int -> [a] -> [a]
delete n xs = help xs n
   where help [] _ = []
         help (x:xs) 1 = help xs n
         help (x:xs) k = x : help xs (k - 1)


isort :: [Int] -> [Int]
isort [] = []
isort [x] = [x]
isort (x:xs) = insert (isort xs)
  where insert [] = [x]
        insert (y:ys)
          | x < y = x : y : ys
          | otherwise = y : insert ys


rotate :: Int -> [Int] -> [Int]
rotate x st = take (length st) $ drop (negate x `mod` length st) $ cycle st

single :: [a] -> [[a]]
single [] = []
single xs = map (\x -> [x]) xs


double :: [Int] -> [Int]
double xs = fst $ foldr (\x (acc, bool) ->
                                  ((if bool then 2 * x else x) : acc,
                                   not bool)) ([], False) xs
