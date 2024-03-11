import System.IO

add3 :: Int -> Int 
add3 = (+3)

mul2 :: Int -> Int
mul2 = (*2)

mycompute :: Int -> IO Int
mycompute v0 = do
    putStrLn ("add3 " ++ show v0)
    let v1 = add3 v0
    putStrLn ("mul2 " ++ show v1)
    let v2 = mul2 v1
    return v2

mycomputefile :: Int -> IO Int
mycomputefile v0 =do
    h <- openFile "log.txt" WriteMode
    hPutStrLn h("add3" ++ show v0)
    let v1 = add3 v0
    hPutStrLn h("mul2" ++ show v1)
    let v2 =mul2 v1
    hClose h
    return v2

main :: IO ()
main = do
    putStrLn "this is log-hs"
    
    res <- mycompute 18
    print res

    resFile <- mycomputefile 18
    print resFile
