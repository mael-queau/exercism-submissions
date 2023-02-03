module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys =
  if length xs == length ys
    then Just $ length $ filter (== False) $ zipWith (==) xs ys
    else Nothing
