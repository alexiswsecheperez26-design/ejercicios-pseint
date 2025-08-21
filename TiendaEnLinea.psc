Algoritmo TiendaEnLinea
	
    Definir Precio, costoTotal Como Real
    Definir cantidad Como Entero
    Definir agregarOtro Como Caracter
	
    costoTotal <- 0
    agregarOtro <- 'si'
	
    Mientras agregarOtro = 'si' O agregarOtro = 'SI' Hacer
        Escribir "Ingrese el Precio del producto:"
        Leer Precio
        Escribir "Ingrese la cantidad que desea comprar:"
        Leer cantidad
		
        // Calcula el costo del producto actual y lo suma al total
        costoTotal <- costoTotal + (Precio * cantidad)
		
        Escribir "Subtotal actual: $", costoTotal
        Escribir "¿Desea agregar otro producto? (si/no)"
        Leer agregarOtro
    FinMientras
	
    Escribir "------------------------------------"
    Escribir "El costo total de su compra es: $", costoTotal
    Escribir "¡Gracias por su compra!"
	
FinAlgoritmo
