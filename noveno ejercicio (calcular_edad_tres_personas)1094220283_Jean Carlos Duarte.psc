Algoritmo calcular_edad_tres_personas
	// Definir variables
	Definir a�o_nac1, a�o_nac2, a�o_nac3,a�o_actual, edad1, edad2, edad3 Como Entero;
	// Solicitar a�o actual
	Escribir "Digite el a�o actual:";Leer a�o_actual
	// Persona 1
	Escribir "Digite el a�o de nacimiento de la primera persona:";Leer a�o_nac1
	edad1 <- a�o_actual - a�o_nac1
	// Persona 2
	Escribir "Digite el a�o de nacimiento de la segunda persona:";Leer a�o_nac2
	edad2 <- a�o_actual - a�o_nac2
	// Persona 3
	Escribir "Digite el a�o de nacimiento de la tercera persona:";Leer a�o_nac3
	edad3 <- a�o_actual - a�o_nac3
	// Mostrar resultados
	Escribir "La edad de la primera persona es: ", edad1, " a�os."
	Escribir "La edad de la segunda persona es: ", edad2, " a�os."
	Escribir "La edad de la tercera persona es: ", edad3, " a�os."
FinAlgoritmo
