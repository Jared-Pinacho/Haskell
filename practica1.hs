

---Practica 1 Haskell__Pinacho Pérez Osmar Jared

--1.Promedio de 3 numeros
average3Numbers:: Double->Double->Double->Double
average3Numbers x y z = (x+y+z)/3

--2.Ejercicio isLastDigit3
isLastDigit3:: Int-> Bool
isLastDigit3 num
    | num `mod` 10==3 =  True 
    | otherwise = False


-- 3. Ejercicio has3Digits.
has3Digits:: Int-> Bool
has3Digits x 
  | (x>99) && (x<1000) = True
  | otherwise = False


---4 Ejercicio isNegative
isNegative ::Float->Bool
isNegative a 
 | a<0=True
 | otherwise =False


----5 Ejercicio sum2Digits 
sum2Digits:: Int->Int
sum2Digits x 
    | x>9 && x<100 = (x `mod` 10)+((x `div` 10) `mod` 10) 
    | x>99 = error "El numero no tiene dos digitos "


--6.Ejercicio even2Digits
even2Digit:: Int->Bool
even2Digit x 
    | (x>9 && x<100) = even (x `mod` 10) && even((x `div` 10) `mod` 10) 
    | x>99 = error "El numero no es de dos digitos "


--7.Ejercicio isPrimeNumber
isPrimeNumber :: Int -> Bool
isPrimeNumber x= elem x[2,3,5,7,11,13,17,19]


--8.Ejercicio isEvenAndPrimeNumber
isEvenAndPrimeNumber :: Int -> Bool
isEvenAndPrimeNumber  x = isPrimeNumber x && even(x)


--9.Ejercicio isMultiple
isMultiple :: Int-> Int -> Bool
isMultiple x y 
  | x `mod` y ==0 = True
  | otherwise = False


--10. Ejercicio isEqual2Digits
isEqual2Digits :: Int-> Bool
isEqual2Digits x 
    | x>9 && x<100 = if((x `mod` 10)==((x `div` 10) `mod` 10)) then True else False
    | x>99 = error "El numero no tiene dos digitos "
    | x<10 = error "El numero tiene 1 digito "
    

-- 11.Ejercicio higher
higher:: (Integral a)=>a->a->a->a
higher x y z 
  | x>y && x>z = x
  | y>x && y>z = y
  | z>x && z>y = z

--12.Ejercicio isEvenSum2Number
isEventSum2Number :: Int->Int-> Bool
isEventSum2Number x y
   | ((x+y) `mod` 2)==0 = True
   | otherwise = False


--13 Ejercicio sum2Digit2Number
sum2Digit2Number:: Int->Int->Int
sum2Digit2Number x y
    | (x>9 && x<100) && (y>9 && y<100) = (x `mod` 10)+((x `div` 10) `mod` 10) + (y `mod` 10)+((y `div` 10) `mod` 10) 
    | (x<99 || y<99) || (y<9 && x<9) = error "Algún numero no tiene dos digitos "


--14. Ejercicio sum3Digits
sum3Digits:: Int->Int
sum3Digits x
    | (x>99 && x<1000) = (x `mod` 10)+((x `div` 10) `mod` 10)+((x `div` 100) `mod` 10)
    | (x<100 || x>999) = error "El numero no tiene tres digitos "


--15. Ejercicio equal3Digits
equal3Digits:: Int->Bool
equal3Digits x
    | (x>99 && x<1000) = if((x `mod` 10)==((x `div` 10) `mod` 10)) then True else if (((x `mod` 10))==((x `div` 100) `mod` 10)) then True else if (((x `div` 10) `mod` 10)==((x `div` 100) `mod` 10)) then True else False
    | (x<100 || x>999) = error "El numero no tiene tres digitos "



--16. Ejercicio positionHigher3Digits
positionHigher3Digits:: Int->String
positionHigher3Digits x
 |(x<100 || x>999) = error "El numero no tiene tres digitos "
 | (x `mod` 10)>((x `div` 10) `mod` 10) && (x `mod` 10) > ((x `div` 100) `mod` 10) = "El mayor esta en posicion 3"
 | ((x `div` 10) `mod` 10)>(x `mod` 10) && ((x `div` 10) `mod` 10)>((x `div` 100) `mod` 10) = "El mayor esta en posicion 2"
 | ((x `div` 100) `mod` 10)>(x `mod` 10) && ((x `div` 100) `mod` 10)> (x `mod` 10) = "El mayor esta en posicion 1"
    


--17. Ejercicio palindromo
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs



--18. Ejercicio safeDivision
safeDivision :: (Eq p, Fractional p) => p -> p -> p
safeDivision _ 0 = error"No es posible dividir entre 0"
safeDivision x y = x/y

--19. Ejercicio xor
xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y)


--20. Ejercicio distancia entre dos puntos
distance :: Floating a => (a, a) -> (a, a) -> a
distance (x1,y1) (x2,y2) = sqrt((x1-x2)^2+(y1-y2)^2)