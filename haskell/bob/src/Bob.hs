module Bob (responseFor) where
import Data.Char (isSpace, isLetter, isUpper)

-- Bob exercise

responseFor :: String -> String
responseFor input
  | null text = "Fine. Be that way!"
  | isShouting && isAsking = "Calm down, I know what I'm doing!"
  | isShouting = "Whoa, chill out!"
  | isAsking = "Sure."
  | otherwise = "Whatever."
  where
    text = filter (not . isSpace) input
    letters = filter isLetter text
    isShouting = all isUpper letters && any isUpper letters
    isAsking = last text == '?'
