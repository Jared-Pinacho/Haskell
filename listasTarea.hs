
---Listas Pinacho Perez Osmar Jared ---

---Ejerecicio 1. ---
firstToEnd :: (Ord a)=>[a]->[a]
firstToEnd []= error "Lista vacia"
firstToEnd[x]= error "Solo 1 elemento"
firstToEnd (x:xs) =  xs ++ [x]


---Ejerecicio 2. ---
minAndMax :: (Ord a)=>[a]->[a]
minAndMax []= error "Lista vacia"
minAndMax [x]= error "Solo 1 elemento"
minAndMax xs= [minimum xs, maximum xs]


---Ejercicio 3 --
minorsFirstElement:: (Ord a) => [a]-> [a]
minorsFirstElement []= error "Lista vacia"
minorsFirstElement [x]= error "Solo 1 elemento"
minorsFirstElement (x:xs)= [i | i<-xs , i<x]


---Ejercicio 4 ----
greaterOrEqualFirstElement :: (Ord a) => [a]-> [a]
greaterOrEqualFirstElement []= error "Lista vacia"
greaterOrEqualFirstElement [x]= error "Solo 1 elemento"
greaterOrEqualFirstElement (x:xs)= [y | y<-xs, x<=y]


--- Ejercicio 5 ---
minorsToSumFirstAndSecondElem :: (Integral a) => [a]-> [a]
minorsToSumFirstAndSecondElem []= error "Lista vacia"
minorsToSumFirstAndSecondElem [x]= error "Solo 1 elemento"
minorsToSumFirstAndSecondElem  (x:y:xs)= [z | z<-xs, [x+y]>[z]]


--- Ejercicio 6 ---
listaSumaDuplaToList :: (Integral a)=>[(a,a)]->[a]
listaSumaDuplaToList xs= [x+y | (x,y)<-xs]


--- Ejercicio 7 ---
listMultTripletaToList :: (Integral a)=>[(a,a,a)]->[a]
listMultTripletaToList []= []
listMultTripletaToList xs = [x*y*z|(x,y,z)<-xs]


---Ejercicio 8 ---
changeFstToSnd :: (Integral a)=>[(a,a)]->[(a,a)]
changeFstToSnd xs = [(y,x) | (x,y)<-xs]



---Ejercicio 9---
sumVectors :: Num a => [a] -> [a] -> [a]
sumVectors [] []  = []
sumVectors (x:xs) (y:ys) = x+y : sumVectors xs ys


---Erjercicio 10---
dividers:: Int -> [Int]
dividers n = divide n 1

divide:: Int -> Int -> [Int]
divide n m
    | n == m = [n]
    | n > m && (n `mod` m == 0) = m:(divide n (m+1))
    | n > m && (n `mod` m /= 0) = divide n (m+1)



---Ejercicio 11 ---
esPrimo :: Integral a => a -> Bool
esPrimo n = [x | x <- [1..n], n `mod` x == 0] == [1,n]

primeNumbers :: (Integral a) => a -> [a]
primeNumbers n = [x | x <- [2..n], esPrimo x]


----Ejercicio 12 ---
infinitePrimeNumbers :: [Integer]
infinitePrimeNumbers = filterPrime [2..]
  where filterPrime (p:xs) =
          p : filterPrime [x | x <- xs, x `mod` p /= 0]