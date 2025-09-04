Algoritmo total_ventas_semana
	
	Definir i Como Entero
	Definir venta, total_ventas Como Real
	// Inicializar en cero
	total_ventas <- 0  
	// Repetir para los 7 días de la semana
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir " digite las ventas del día ", i, ":";Leer venta
		total_ventas <- total_ventas + venta
	FinPara
	// Mostrar total de ventas
	Escribir " El total de ventas de la semana es: ", total_ventas
	
FinAlgoritmo

