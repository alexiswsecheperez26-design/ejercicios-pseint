Algoritmo IVA_total
	
	Definir Precio_unitario,cantidad, total, IVA,total_con_iva Como Real;
	
	Escribir " Digite el precio unitario del producto: ";Leer precio_unitario
	
	Escribir " Digite la cantidad de productos: ";Leer cantidad
	
	total <- precio_unitario * cantidad
	
	iva <- total * 0.19
	
	total_con_iva <- total + iva
	
	Escribir " Total sin IVA: ", total
	Escribir " IVA (19%): ", iva
	Escribir " Total con IVA: ", total_con_iva
FinAlgoritmo


