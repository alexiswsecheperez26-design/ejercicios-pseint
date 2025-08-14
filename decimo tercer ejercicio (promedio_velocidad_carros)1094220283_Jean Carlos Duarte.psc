Algoritmo promedio_velocidad_carros
	// Definir variables
	Definir distancia1, tiempo1, distancia2, tiempo2, velocidad1, velocidad2, promedio Como Real;
	
	// Datos del primer carro
	Escribir "Ingrese la distancia recorrida por el primer carro (km):";Leer distancia1
	Escribir "Ingrese el tiempo que tomó el primer carro (horas):";Leer tiempo1
	
	// Datos del segundo carro
	Escribir "Ingrese la distancia recorrida por el segundo carro (km):";Leer distancia2
	Escribir "Ingrese el tiempo que tomó el segundo carro (horas):";Leer tiempo2
	
	// Calcular velocidades
	velocidad1 <- distancia1 / tiempo1
	velocidad2 <- distancia2 / tiempo2
	
	// Calcular promedio de velocidades
	promedio <- (velocidad1 + velocidad2) / 2
	
	// Mostrar resultados
	Escribir "La velocidad del primer carro es: ", velocidad1, " km/h"
	Escribir "La velocidad del segundo carro es: ", velocidad2, " km/h"
	Escribir "El promedio de velocidad entre los dos carros es: ", promedio, " km/h"
FinAlgoritmo
