Algoritmo RegistroVentas
    Definir nombreProducto, resumenProductos, respuesta Como Caracter;
    Definir precio, montoTotal Como Real;
	
    montoTotal <- 0;
    resumenProductos <- "";
	
    Repetir
        Escribir "Ingrese el nombre del producto vendido:";
        Leer nombreProducto;
        Escribir "Ingrese el precio del producto:";
        Leer precio;
		
        // Se acumula el precio en el monto total
        montoTotal <- montoTotal + precio;
        // Se concatena el producto al resumen
        resumenProductos <- Concatenar(resumenProductos, "- ");
        resumenProductos <- Concatenar(resumenProductos, nombreProducto);
        resumenProductos <- Concatenar(resumenProductos, "\n");
		
        Escribir "¿Desea registrar otra venta? (s/n)";
        Leer respuesta;
    Hasta Que respuesta = "n" O respuesta = "N";
	
    Escribir "";
    Escribir "RESUMEN DE VENTAS DEL DÍA";
    Escribir "";
    Escribir "Productos vendidos:";
    Escribir resumenProductos;
    Escribir "Monto total de las ventas: $", montoTotal;
	
FinAlgoritmo
