main :: IO()
main = do putStrLn "type a letter"
	  (x:_) <- getLine --get only first Char
	  let s = [('a', "Aah"), ('b', "Bay"), ('c', "Say"), ('d', "Day"), ('e', "Ey"), ('f', "F"), ('g', "Gey"), ('h', "Hah"), ('k', "Ka"), ('l', "El"), ('m', "Em"), ('n', "En"), ('o', "Oh"), ('p', "Pay"), ('q', "Ku"), ('r', "er or rr"), ('s', "Es"), ('t', "Teeh"), ('u', "Uu as in UFO"), ('v', "Feeh"), ('w', "Way"), ('x', "Iks"), ('y', "I"), ('z', "Set")]
	      in do putStrLn (find s x)

find :: Eq key => [(key,value)] -> key -> value
find ((k,v):rs) query
	| k == query = v
	| otherwise = find rs query
