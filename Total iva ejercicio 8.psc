// Definición de funciones:
Funcion precioUnitario <- obtenerPrecioUnitario
    Definir precioUnitario Como Real
    Escribir "Ingrese precio unitario:"
    Leer precioUnitario
FinFuncion

Funcion cantidadProductos <- obtenerCantidadProductos
    Definir cantidadProductos Como Real
    Escribir "Ingrese cantidad de productos:"
    Leer cantidadProductos
FinFuncion

Funcion subtotal <- calcularSubtotal(precioUnitario, cantidadProductos)
    Definir subtotal Como Real
    subtotal <- precioUnitario * cantidadProductos
FinFuncion

Funcion valorIVA <- calcularIVA(subtotal)
    Definir valorIVA Como Real
    valorIVA <- subtotal * 0.19
FinFuncion

Funcion totalConIVA <- calcularTotalConIVA(subtotal, valorIVA)
    Definir totalConIVA Como Real
    totalConIVA <- subtotal + valorIVA
FinFuncion

Algoritmo total_iva
	Definir precio, cantidad, subtotal, iva, total_con_iva Como Real
	
    precio <- obtenerPrecioUnitario
    cantidad <- obtenerCantidadProductos
    subtotal <- calcularSubtotal(precio, cantidad)
    iva <- calcularIVA(subtotal)
    total_con_iva <- calcularTotalConIVA(subtotal, iva)
	
    Escribir "Total sin IVA: ", subtotal
    Escribir "IVA (19%): ", iva
    Escribir "Total con IVA: ", total_con_iva
	
FinAlgoritmo
	