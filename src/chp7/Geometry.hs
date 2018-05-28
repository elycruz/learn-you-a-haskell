module Geometry
( sphereVolume
, sphereArea
, cubeVolume
, cubeArea
, cuboidArea
, cuboidVolume
, Sphere
, Cuboid
, Cube
) where

import qualified Geometry.Sphere    as Sphere
import qualified Geometry.Cube      as Cube
import qualified Geometry.Cuboid    as Cuboid

sphereVolume :: Float -> Float
sphereVolume radius = Sphere.volume radius

sphereArea :: Float -> Float
sphereArea radius = Sphere.area radius

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume a b c = Cuboid.volume a b c

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea a b c = Cuboid.area a b c

rectangleArea :: Float -> Float -> Float
rectangleArea a b = Cuboid.rectangleArea a b
