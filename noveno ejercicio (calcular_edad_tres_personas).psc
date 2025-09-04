Algoritmo calcular_edad_tres_personas
	
	Definir año_nac1, año_nac2, año_nac3,año_actual, edad1, edad2, edad3 Como Entero;
	
	Escribir " Digite el año actual:";Leer año_actual
	
	Escribir " Digite el año de nacimiento de la primera persona:";Leer año_nac1
	edad1 <- año_actual - año_nac1
	
	Escribir " Digite el año de nacimiento de la segunda persona:";Leer año_nac2
	edad2 <- año_actual - año_nac2
	
	Escribir " Digite el año de nacimiento de la tercera persona:";Leer año_nac3
	edad3 <- año_actual - año_nac3
	
	Escribir " La edad de la primera persona es: ", edad1, " años."
	Escribir " La edad de la segunda persona es: ", edad2, " años."
	Escribir " La edad de la tercera persona es: ", edad3, " años."
FinAlgoritmo


