module Main where

import System.IO

-- Define the distance matrix
distanceMatrix :: [(String, [(String, Int)])]
distanceMatrix = [
    ("Thebes", [("Memphis", 200), ("Alexandria", 400), ("Asyut", 100)]),
    ("Memphis", [("Thebes", 200), ("Alexandria", 300), ("Asyut", 250)]),
    ("Alexandria", [("Thebes", 400), ("Memphis", 300), ("Asyut", 500)]),
    ("Asyut", [("Thebes", 100), ("Memphis", 250), ("Alexandria", 500)])
    ]

-- Function to get the distance between two cities
getDistance :: String -> String -> Int
getDistance city1 city2 =
    case lookup city1 distanceMatrix of
        Just distances -> case [d | (c, d) <- distances, c == city2] of
            [] -> 0
            (d:_) -> d
        Nothing -> 0

-- Main function to calculate and print the shortest distance
main :: IO ()
main = do
    putStrLn "Available cities:"
    mapM_ (\(city, _) -> putStrLn city) distanceMatrix
    putStrLn "Enter start city: "
    startCity <- getLine
    putStrLn "Enter end city: "
    endCity <- getLine
    let shortestDistance = getDistance startCity endCity
    putStrLn ("Shortest distance from " ++ startCity ++ " to " ++ endCity ++ ": " ++ show shortestDistance)
