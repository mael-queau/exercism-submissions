module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map, fromList, insertWith)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts = foldl increment (Right (fromList [(A, 0), (C, 0), (G, 0), (T, 0)]))

increment :: Either String (Map Nucleotide Int) -> Char -> Either String (Map Nucleotide Int)
increment (Right cnt) n
  | n == 'A' = Right $ insertWith (+) A 1 cnt
  | n == 'C' = Right $ insertWith (+) C 1 cnt
  | n == 'G' = Right $ insertWith (+) G 1 cnt
  | n == 'T' = Right $ insertWith (+) T 1 cnt
  | otherwise = Left "error"
increment (Left err) _ = Left err
