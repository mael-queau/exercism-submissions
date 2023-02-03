module Robot
  ( Bearing (East, North, South, West),
    bearing,
    coordinates,
    mkRobot,
    move,
  )
where

data Bearing
  = North
  | East
  | South
  | West
  deriving (Eq, Show)

-- data Robot = Robot Bearing Integer Integer
data Robot = Robot {
  bearing :: Bearing,
  coordinates :: (Integer, Integer)
}

mkRobot :: Bearing -> (Integer, Integer) -> Robot
mkRobot direction (x, y) = Robot direction (x, y)

move :: Robot -> String -> Robot
move = foldl (flip act)

act :: Char -> Robot -> Robot
act inst
  | inst == 'A' = advance
  | inst == 'R' = turnRight
  | inst == 'L' = turnLeft

advance :: Robot -> Robot
advance (Robot b (x, y))
  | b == North = Robot b (x, y + 1)
  | b == East = Robot b (x + 1, y)
  | b == South = Robot b (x, y - 1)
  | b == West = Robot b (x - 1, y)

turnRight :: Robot -> Robot
turnRight (Robot b (x, y))
  | b == North = Robot East (x, y)
  | b == East = Robot South (x, y)
  | b == South = Robot West (x, y)
  | b == West = Robot North (x, y)

turnLeft :: Robot -> Robot
turnLeft (Robot b (x, y))
  | b == North = Robot West (x, y)
  | b == West = Robot South (x, y)
  | b == South = Robot East (x, y)
  | b == East = Robot North (x, y)
