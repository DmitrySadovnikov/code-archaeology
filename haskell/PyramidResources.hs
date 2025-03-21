module Main where

import System.IO

-- Function to calculate resources needed for a pyramid
calculateResources :: Int -> (Int, Int, Int)
calculateResources pyramidSize =
    let limestoneNeeded = pyramidSize * 1000
        graniteNeeded = pyramidSize * 500
        laborNeeded = pyramidSize * 2000
    in (limestoneNeeded, graniteNeeded, laborNeeded)

-- Main function to calculate and print resources
main :: IO ()
main = do
    putStrLn "Enter pyramid size: "
    pyramidSize <- readLn :: IO Int
    let (limestoneNeeded, graniteNeeded, laborNeeded) = calculateResources pyramidSize
    putStrLn ("Limestone needed: " ++ show limestoneNeeded)
    putStrLn ("Granite needed: " ++ show graniteNeeded)
    putStrLn ("Labor needed: " ++ show laborNeeded)
