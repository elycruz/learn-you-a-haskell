module StringLengthValidator (
    isWithinRange
    ) where

import Data.Map

data ValidatorOptions = {
    messageFuncsMap :: Map Int (ValidatorOptions -> String -> String)
}

isWithinRange :: Int -> Int -> String -> Bool
isWithinRange min max xs = let lenXs = length xs
    in lenXs >= min && lenXs <= max

toStringLengthValidator :: ValidatorOptions -> (String -> ValidationResult)
-- toStringLengthValidator vOps = \xs -> isWithinRange()
