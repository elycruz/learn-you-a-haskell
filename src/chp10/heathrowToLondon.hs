data Node = Node Road (Maybe Road)
data Road = Road Int Node
data Section = Section {
    getA :: Int,
    getB :: Int,
    getC :: Int
} deriving (Show)
data Label = A | B | C deriving (Show)

type RoadSystem = [Section]
type Path = [(Label, Int)]

heathrowToLondon :: RoadSystem
heathrowToLondon = [Section 50 10 30, Section 5 90 20, Section 40 2 25, Section 10 8 0]

optimalPath :: RoadSystem -> Path
optimalPath = undefined



