module Geometry
( sphereVolume
, sphereArea
, cubeVolume
, cubeArea
, cuboidAra
, cuboidVolume
)

sphereVolume :: Float -> Float
sphereVolume =

sphereArea :: Float -> Float
sphereArea radius = 4 * pi * (radius ^ 2)

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume a b c = rectangleArea a b * c

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea a b c = rA a b * 2 + rA a c * 2 + rA c b * 2
  where rA = rectangleArea

rectangleArea :: Float -> Float -> Float
rectangleArea a b = a * b
