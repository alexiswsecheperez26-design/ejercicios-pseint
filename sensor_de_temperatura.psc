Algoritmo sensor_de_temperatura
	Definir temperatura Como Real
	
	Repetir
		Escribir "Ingrese la temperatura actual (�C):"
		Leer temperatura
		
		Si temperatura < 18 O temperatura > 25 Entonces
			Escribir "�ALERTA! La temperatura est� fuera del rango aceptable (18�C - 25�C)."
		FinSi
		
	Hasta Que temperatura >= 18 y temperatura <= 25
	Escribir "La temperatura de ", temperatura, "�C est� dentro del rango aceptable."
FinAlgoritmo
