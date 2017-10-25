module Geometry.Cuboid
( volume
, area
) where

volume :: Float -> Float -> Float -> Float
volume a b c = rectangleArea a b * c

area :: Float -> Float -> Float -> Float
area a b c = rA a b * 2 + rA a c * 2 + rA c b * 2
  where rA = rectangleArea

rectangleArea :: Float -> Float -> Float
rectangleArea a b = a * b
