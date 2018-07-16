# Validators

## Synopsis
A set of types and functions for handling validation of data types.

## Definitions/Preamble
Validator :: a -> ValidationResult
ValidatorMessage :: String
ValidatorMessages :: [String]
ValidatorMessageFunc :: ValidatorOptions -> ValueToValidate
ValidationResult :: {
    result :: bool, messages :: [String]
    }
