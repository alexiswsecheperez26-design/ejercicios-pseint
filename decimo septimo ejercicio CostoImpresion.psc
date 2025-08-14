Algoritmo CostoImpresion
	// Declarar variables
    Definir paginas Como Entero
    Definir precioPorPagina, costoTotal Como Real
	
    // Leer la cantidad de páginas
    Escribir "Ingrese la cantidad de páginas a imprimir:"
    Leer paginas
	
    // Leer el precio por cada página
    Escribir "Ingrese el precio por cada página:"
    Leer precioPorPagina
	
    // Calcular el costo total
    costoTotal <- paginas * precioPorPagina
	
    // Mostrar el resultado
    Escribir "El costo total de la impresión es: $", costoTotal
FinAlgoritmo
