//definir funciones
Funcion precio <- solicitarPrecioOriginal
    Definir precio Como Real
    Escribir "Digite el precio original del producto:"
    Leer precio
FinFuncion

Funcion porcentaje <- solicitarPorcentajeDescuento
    Definir porcentaje Como Real
    Escribir "Digite el porcentaje de descuento:"
    Leer porcentaje
FinFuncion

Funcion descuento <- calcularValorDescuento(precioOriginal, porcentajeDescuento)
    Definir descuento Como Real
    descuento <- precioOriginal * (porcentajeDescuento / 100)
FinFuncion

Funcion finalProducto <- calcularPrecioFinal(precioOriginal, valorDescuento)
    Definir finalProducto Como Real
    finalProducto <- precioOriginal - valorDescuento
FinFuncion

Algoritmo calcularDescuento 
	Definir precioOriginal, porcentajeDescuento, valorDescuento, precioFinal Como Real
	//tomar datoss
	precioOriginal <- solicitarPrecioOriginal
	porcentajeDescuento <- solicitarPorcentajeDescuento
	//procesar datos
	valorDescuento <- calcularValorDescuento(precioOriginal, porcentajeDescuento)
	precioFinal <- calcularPrecioFinal(precioOriginal, valorDescuento)
	//Mostrar resultados
	Escribir "Descuento aplicado: $", valorDescuento
	Escribir "Precio final: $", precioFinal
FinAlgoritmo
