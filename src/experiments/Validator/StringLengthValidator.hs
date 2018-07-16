module StringLengthValidator
( isWithinRange
, notWithinRangeMessageFn
, stringLengthValidator
, ValidatorOptions
) where

import Data.Map

data ValidationResult = ValidationResult Bool [String] deriving Show

data ValidatorOptions = ValidatorOptions {
    minLen :: Int,
    maxLen :: Int,
    messageFuncsMap :: Map Int (ValidatorOptions -> String -> String)
}

notWithinRangeMessageFn vOps xs = "Value is not within range"

isWithinRange :: Int -> Int -> String -> Bool
isWithinRange min max xs = let lenXs = length xs
    in lenXs >= min && lenXs <= max

stringLengthValidator :: ValidatorOptions -> String -> ValidationResult
stringLengthValidator vOps xs =
    if (isWithinRange (minLen vOps) (maxLen vOps) xs) then
        ValidationResult True []
    else
        ValidationResult False [
            notWithinRangeMessageFn vOps xs
        ]
