Algoritmo calculo_descuento
	
	Definir precio_original, porcentaje_descuento, valor_descuento, precio_final Como Real;
	
	// Solicitar el precio original del producto
	Escribir " Digite el precio original del producto:";Leer precio_original
	
	// Solicitar el porcentaje de descuento
	Escribir " Digite el porcentaje de descuento:";Leer porcentaje_descuento
	
	// Calcular el valor del descuento
	valor_descuento <- precio_original * (porcentaje_descuento / 100)
	
	// Calcular el precio final después del descuento
	precio_final <- precio_original - valor_descuento
	
	// Mostrar resultados
	Escribir " Descuento aplicado: $", valor_descuento
	Escribir " Precio final: $", precio_final
FinAlgoritmo

