module Lib
    ( 
      startProgram
    ) where

type HellsTriangle = [[Int]]

-- Programn Functions

getUserInput :: IO HellsTriangle
getUserInput = do
    name <- getLine 
    return (read name) :: IO HellsTriangle 


findMaximumTotal :: HellsTriangle -> IO ()
findMaximumTotal hellsTriangle = do
    return ()

startProgram :: IO ()
startProgram = do
    putStrLn "-------------- Welcome to HellsTriangle Machine --------------" 
    putStrLn ""
    putStrLn "Send a triangle in a list and i'll give you the maximum total. "
    putStrLn "Example: [[1],[1,2],[1,2,3]]"  
    putStrLn ""
    hellsTriangle <- getUserInput
    findMaximumTotal hellsTriangle
    return ()