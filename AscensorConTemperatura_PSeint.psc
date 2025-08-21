Algoritmo AscensorConTemperatura
		Definir temperatura Como Real
		Definir piso Como Entero
		Definir tempMin, tempMax Como Real
		
		tempMin <- 18
		tempMax <- 25
		
		Escribir "Ingrese la temperatura actual (°C):"
		Leer temperatura
		
		Si temperatura >= tempMin Y temperatura <= tempMax Entonces
			Escribir "Ingrese el piso al que desea ir (1 a 10):"
			Leer piso
			
			Si piso >= 1 Y piso <= 10 Entonces
				Escribir "El ascensor se mueve al piso ", piso
			Sino
				Escribir "Error: Piso inválido."
			FinSi
		Sino
			Escribir "La temperatura no es adecuada, el ascensor no se moverá."
		FinSi

FinAlgoritmo
