Algoritmo AscensorPeso
	//definir variables
		Definir peso Como Real
		Definir piso Como Entero
		Definir limitePeso Como Real
		//tomar datos del peso
		limitePeso <- 125  // l�mite en kg
		//primero, se verifica si el peso esta dentro del limite
		Escribir "Ingrese su peso (kg):"
		Leer peso
		Escribir "Ingrese el piso al que desea ir (1 a 10):"
		Leer piso
		//
		Si peso <= limitePeso Entonces
			Escribir "El ascensor se mueve al piso ", piso
		Sino
			//mensaje si el piso es valido
			Escribir "El ascensor est� sobrecargado."
		FinSi

FinAlgoritmo
