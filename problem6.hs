
x = [1..100]
sqrs = map (^2) x
sumX = sum x
sumXsqrd = sumX^2
sumSqrs = sum sqrs

ans = sumXsqrd - sumSqrs

main = print ans
