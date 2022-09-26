-- cerner_2tothe5th_2022
listToSort :: [Int]
listToSort = [13, 2, 3, 14, 17, 4, 1, 5, 16, 12, 9, 10, 15, 8, 7, 11, 18, 19, 6, 20]



bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort lst = if bpassed == lst then lst
                 else bubbleSort bpassed
                 where bpassed = bubblePass lst

bubblePass :: (Ord a) => [a] -> [a]
bubblePass [] = [] 
bubblePass [x] = [x] 
bubblePass (x1:x2:xs) = if x1 > x2
                        then [x2] ++ (bubblePass ([x1] ++ xs))
                        else [x1] ++ (bubblePass ([x2] ++ xs))

main = do
    putStrLn $ "Original: " ++ show listToSort
    putStrLn $ "Sorted: " ++ show (bubbleSort listToSort)
