Algoritmo Cuenta_Regresiva
	Definir numero Como Entero;
	
	Repetir
		Escribir "Ingrese un número entero positivo para la cuenta regresiva:";
		Leer numero;
		Si numero <= 0 Entonces
			Escribir "El número debe ser positivo. Intente de nuevo.";
		FinSi
	Hasta Que numero > 0;
	
	Escribir "Iniciando cuenta regresiva desde ", numero, "...";
	
	Mientras numero >= 0 Hacer
		Escribir numero;
		numero <- numero - 1;
	FinMientras
	
	Escribir "¡Tiempo cumplido!";
	
FinAlgoritmo
