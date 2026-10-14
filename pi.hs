mypi :: Int -> Double
mypi n = 4 * sum [ ((-1) ** fromIntegral k) / (2 * fromIntegral k + 1) | k <- [0..n] ]

-- https://en.wikipedia.org/wiki/Bailey%E2%80%93Borwein%E2%80%93Plouffe_formula
bbppi :: Int -> Double
bbppi n = sum [ 1/(16 ** fromIntegral k) * ( (4 / (8 * fromIntegral k + 1)) - (2 / (8 * fromIntegral k + 4)) - (1 / (8 * fromIntegral k + 5)) - (1 /(8 * fromIntegral k + 6)) ) | k <- [0..n] ]

main :: IO ()
main = do
  putStrLn ("pi ~ " ++ show (bbppi 10))
