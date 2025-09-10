Algoritmo llenar_lista
	definir lista, i , n Como Entero
	Dimension lista[5]
	para i<- 1 hasta 5 con paso 1
	Escribir "ingrese un numero para la posicion " , i , " ;"
	Leer n
	lista[i]<-n
FinPara
Escribir "los numeros en la lista son:"
para i<- 1 hasta 5 con paso 1
Escribir lista[i]
FinPara
FinAlgoritmo
