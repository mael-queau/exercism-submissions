module Pangram (isPangram) where
import Data.Char (isAsciiUpper)

isPangram :: String -> Bool
isPangram text = null [c | c <- ['a' .. 'z'], c `notElem` toLower text]

toLower :: String -> String
toLower = map toLower'

toLower' :: Char -> Char
toLower' c
  | isAsciiUpper c = toEnum (fromEnum c + 32)
  | otherwise = c
