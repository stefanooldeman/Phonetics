main :: IO()
main =
    do ask (question "type a alphanumeric letter")


ask :: IO f -> IO()
ask q =
    do q
       input <- getLine
       case input of
         (x:_) -> (putStrLn (find phonetics x))
       -- statement wich keeps repeating this "question"
       do ask q


question :: [Char] -> IO()
question string =
    do putStrLn string


find :: Eq key => [(key,value)] -> key -> value
find ((k,v):rs) query
	| k == query = v
	| otherwise = find rs query


-- function without params are often called constants.
phonetics = [('a', "Aah"), ('b', "Bay"), ('c', "Say"), ('d', "Day"), ('e', "Ey"), ('f', "F"), ('g', "Gey"), ('h', "Hah"), ('k', "Ka"), ('l', "El"), ('m', "Em"), ('n', "En"), ('o', "Oh"), ('p', "Pay"), ('q', "Ku"), ('r', "er or rr"), ('s', "Es"), ('t', "Teeh"), ('u', "Uu as in UFO"), ('v', "Feeh"), ('w', "Way"), ('x', "Iks"), ('y', "I"), ('z', "Set")]
