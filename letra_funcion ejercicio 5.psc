funcion letra<-letras
	definir letra Como Caracter
	Escribir "asigne una letra: ";
	Leer letra
FinFuncion

Funcion imp<-imprime(letra)
	definir imp como cadena
	imp<-"La letra asignada es: "+letra
FinFuncion
Funcion ver<-resultado(imp)
	Escribir imp
FinFuncion
Algoritmo letra_funcion
	Definir letra Como Caracter
	definir imp, ver como cadena
	letra<-letras
	imp<-imprime(letra)
	ver<-resultado(imp)
FinAlgoritmo
