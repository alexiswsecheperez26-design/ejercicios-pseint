Funcion sumar <- sumarCinco
	
	Definir sumar, num Como Entero
    sumar <- 0
    Para i <- 1 Hasta 5 Hacer
        Escribir " Ingrese el sumando Nº ", i, ": "
        Leer num
        sumar <- sumar + num
    FinPara
	
FinFuncion


Algoritmo sumarCincoNumeros
	
	Definir sumaTotal Como Entero
	
	sumaTotal <- sumarCinco()
		
		Escribir " La suma de los 5 números es: ", sumaTotal
FinAlgoritmo


	

