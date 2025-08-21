Algoritmo Simulador_Viajes
	
	Definir distancia, velocidad, tiempo Como Real;
	Definir continuar Como Caracter;
	
	continuar <- "si";
	
	Mientras continuar = "si" Hacer
		Escribir "Ingrese la distancia total del viaje (en km):";
		Leer distancia;
		Escribir "Ingrese la velocidad promedio (en km/h):";
		Leer velocidad;
		
		Si velocidad > 0 Entonces
			tiempo <- distancia / velocidad;
			Escribir "El tiempo estimado de viaje es: ", tiempo, " horas.";
		Sino
			Escribir "La velocidad debe ser mayor a cero.";
		FinSi
		
		Escribir "¿Desea simular otro viaje? (si/no)";
		Leer continuar;
		continuar <- Minusculas(continuar);
	FinMientras
	
	Escribir "Fin del programa.";
	
FinAlgoritmo
