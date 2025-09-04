Algoritmo IMC_dos_personas
	
	Definir peso1, altura1, imc1, peso2, altura2, imc2 Como Real;
	
	// Datos de la primera persona
	Escribir " Digite el peso de la primera persona (kg):";Leer peso1
	Escribir " Digite la altura de la primera persona (m):";Leer altura1
	imc1 <- peso1 / (altura1 ^ 2)
	
	// Datos de la segunda persona
	Escribir " Digite el peso de la segunda persona (kg):";Leer peso2
	Escribir " Digite la altura de la segunda persona (m):";Leer altura2
	imc2 <- peso2 / (altura2 ^ 2)
	
	// Mostrar resultados
	Escribir " El IMC de la primera persona es: ", imc1
	Escribir " El IMC de la segunda persona es: ", imc2
FinAlgoritmo

