divides d n = rem n d == 0

ldf k n | divides k n = k
        | k^2 > n     = n
        | otherwise   = ldf (k+1) n

ld n = ldf 2 n

prime0:: Int -> Bool
prime0 n | n < 1 = error "not a positive integer"
         | n == 1 = False
         | otherwise = ld n == n

main =
  let primes = [x | x <- [1..2000000], prime0 x] ::[Int] in
    print $ sum (primes)

--compile with "ghc -threaded problem10.hs", ghci takes too long
