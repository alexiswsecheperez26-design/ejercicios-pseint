Algoritmo IVA_total
	
	Definir Precio_unitario,cantidad, total, IVA,total_con_iva Como Real;
	// Solicitar precio unitario del producto
	Escribir " Digite el precio unitario del producto: ";Leer precio_unitario
	// Solicitar la cantidad de productos
	Escribir " Digite la cantidad de productos: ";Leer cantidad
	// Calcular el total sin IVA
	total <- precio_unitario * cantidad
	// Calcular el IVA (si el iva es del 19%)
	iva <- total * 0.19
	// Calcular el total con IVA
	total_con_iva <- total + iva
	// Mostrar resultados
	Escribir " Total sin IVA: ", total
	Escribir " IVA (19%): ", iva
	Escribir " Total con IVA: ", total_con_iva
FinAlgoritmo

