module Main where
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    first <- read (args !! 0) :: Int
    second <- read (args !! 1) :: Int
    sum <- first + second
    putStrLn (show sum)
