Algoritmo sventas_tres_productos
	
	Definir unidades1, unidades2, unidades3 Como Entero
	Definir precio1, precio2, precio3, total_unidades, total_pagar Como Real
	
	// Datos del producto 1
	Escribir " Ingrese las unidades vendidas del producto 1:";Leer unidades1
	Escribir " Ingrese el precio unitario del producto 1:";Leer precio1
	
	// Datos del producto 2
	Escribir " Ingrese las unidades vendidas del producto 2:";Leer unidades2
	Escribir " Ingrese el precio unitario del producto 2:";Leer precio2
	
	// Datos del producto 3
	Escribir " Ingrese las unidades vendidas del producto 3:";Leer unidades3
	Escribir " Ingrese el precio unitario del producto 3:";Leer precio3
	
	// Calcular total de unidades vendidas
	total_unidades <- unidades1 + unidades2 + unidades3
	
	// Calcular total a pagar
	total_pagar <- (unidades1 * precio1) + (unidades2 * precio2) + (unidades3 * precio3)
	
	// Mostrar resultados
	Escribir " Total de unidades vendidas: ", total_unidades
	Escribir " Total a pagar: $", total_pagar
FinAlgoritmo

