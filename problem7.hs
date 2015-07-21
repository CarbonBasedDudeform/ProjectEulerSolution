divides d n = rem n d == 0

ldf k n | divides k n = k
        | k^2 > n     = n
        | otherwise   = ldf (k+1) n

ld n = ldf 2 n

prime0 n | n < 1 = error "not a positive integer"
         | n == 1 = False
         | otherwise = ld n == n


main = print $ take 10001 [x| x <- [1..110000], prime0 x]
