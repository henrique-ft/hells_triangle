module Lib
    ( 
      startProgram,
      getUserInput,
      returnValueByIndexOrReturnZero,
      getValuesThatCanBeSummedAndSum,
      sumHellsTriangleFromBottom,
      mapWithIteration,
      mapWithIterationRecursion,
      findMaximumTotal
    ) where

import Data.List
import Data.Maybe

type HellsTriangle = [[Int]]

-- Programn Functions

getUserInput :: IO HellsTriangle
getUserInput = do
    name <- getLine 
    return (read name) :: IO HellsTriangle

returnValueByIndexOrReturnZero :: Int -> [Int] -> Int
returnValueByIndexOrReturnZero index list
    | (index < (length list)) && (index >= 0) = list !! index
    | otherwise = 0

getValuesThatCanBeSummedAndSum :: [Int] -> [Int] -> Int -> Int -> Int
getValuesThatCanBeSummedAndSum oldList actualList valueIndex value = value + (max firstIndexValue secondIndexValue)
    where 
    	firstIndexValue = returnValueByIndexOrReturnZero valueIndex oldList
        secondIndexValue = returnValueByIndexOrReturnZero (valueIndex + 1) oldList

mapWithIteration :: (Int -> a -> b) -> [a] -> [b]
mapWithIteration f list =
	mapWithIterationRecursion f list [] 0

mapWithIterationRecursion :: (Int -> a -> b) -> [a] -> [b] -> Int -> [b] 
mapWithIterationRecursion f list accumulator i
	| i < (length list) = mapWithIterationRecursion f list (((f (i+0) (list !! (i+0))) : []) ++ accumulator) (i+1) 
	| i >= (length list) = reverse accumulator

sumHellsTriangleFromBottom :: [Int] -> [Int] -> [Int]
sumHellsTriangleFromBottom oldList actualList = 
	let getValuesThatCanBeSummedAndSumCurried = getValuesThatCanBeSummedAndSum oldList actualList
	in mapWithIteration getValuesThatCanBeSummedAndSumCurried actualList

findMaximumTotal :: HellsTriangle -> IO ()
findMaximumTotal hellsTriangle = do
    result <- return (foldl sumHellsTriangleFromBottom [] (reverse hellsTriangle))
    putStrLn ""
    putStrLn "Result:"
    putStrLn (show result)
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