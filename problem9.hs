
triplet m a = [(x,y,z) | x <- [a..m], y <- [x..m], z<-[y..m], z^2 == x^2 + y^2, x+y+z == 1000]
--z == 1000 - x - y, z == sqrt(x^2 + y^2)
-- 1000 - x - y == sqrt(x^2 + y^2)
-- 1000 = sqrt(x^2 + y^2) + x + y
-- 1000 = (x^2 + y^2)^0.5 + x + y
--1000^2 = x^2 + y^2 + x^2 + y^2
-- 1000^2 = 2x^2 + 2y^2
-- 500^2 = x^2 + y^2
-- z = 500

--answer found with triplet 500 1 then simply x*y*z to get answer
--but i'm not messing with haskells annoyingness in turning a [(x,y,z)] into x*y*z
