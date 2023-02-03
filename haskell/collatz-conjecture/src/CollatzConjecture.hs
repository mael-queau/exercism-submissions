module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n =
  if n <= 0 then Nothing else Just $ collatz' n 0

collatz' :: Integer -> Integer -> Integer
collatz' 1 acc = acc
collatz' n acc = collatz' (if even n then n `div` 2 else 3 * n + 1) (acc + 1)
