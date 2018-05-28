module Validators (ValidationResult) where

data ValidationResult = ValidationResult {
    result :: Bool,
    messages :: [String]
}
  deriving Show

