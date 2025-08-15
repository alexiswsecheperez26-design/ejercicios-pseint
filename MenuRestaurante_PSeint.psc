Algoritmo MenuRestaurante
    // Declarar variables
    Definir opcion_plato, opcion_pago Como Entero
    Definir subtotal, descuento, total_final Como Real
	
    // Inicializar el subtotal en 0
    subtotal <- 0
	
    Escribir "--- ¡Bienvenido al Restaurante Gemini! ---"
	
    // Bucle para que el cliente pueda ordenar varios platos
    Repetir
        // Mostrar el menú
        Escribir ""
        Escribir "--- Nuestro Menú ---"
        Escribir "1. Hamburguesa - $8.50"
        Escribir "2. Pizza - $10.20"
        Escribir "3. Ensalada - $6.00"
        Escribir "4. Refresco - $2.50"
        Escribir "5. Terminar pedido"
        Escribir "Por favor, selecciona una opción:"
        Leer opcion_plato
		
        // Estructura Segun para procesar la selección
        Segun opcion_plato Hacer
            1:
                subtotal <- subtotal + 8.50
                Escribir "Hamburguesa agregada al pedido."
            2:
                subtotal <- subtotal + 10.20
                Escribir "Pizza agregada al pedido."
            3:
                subtotal <- subtotal + 6.00
                Escribir "Ensalada agregada al pedido."
            4:
                subtotal <- subtotal + 2.50
                Escribir "Refresco agregado al pedido."
            5:
                Escribir "Finalizando tu pedido..."
            De Otro Modo:
                Escribir "Opción no válida. Por favor, intenta de nuevo."
        FinSegun
		
        // Mostrar el subtotal actual
        Escribir "Subtotal actual: $", subtotal
		
    Hasta Que opcion_plato = 5
	
    Escribir ""
    Escribir "--- Resumen del Pedido ---"
    Escribir "Subtotal a pagar: $", subtotal
    Escribir "--------------------------"
	
    // Sección de pago y descuentos
    Escribir "Selecciona tu método de pago:"
    Escribir "1. Efectivo (10% de descuento)"
    Escribir "2. Tarjeta de crédito (5% de descuento)"
    Escribir "3. Cheque (Sin descuento)"
    Leer opcion_pago
	
    Segun opcion_pago Hacer
        1: // Pago en efectivo
            descuento <- subtotal * 0.10
            total_final <- subtotal - descuento
            Escribir "Descuento aplicado: $", descuento
        2: // Pago con tarjeta
            descuento <- subtotal * 0.05
            total_final <- subtotal - descuento
            Escribir "Descuento aplicado: $", descuento
        3: // Pago con cheque
            total_final <- subtotal
            Escribir "No se aplica descuento."
        De Otro Modo:
            total_final <- subtotal
            Escribir "Método no válido, se cobrará el total sin descuento."
    FinSegun
	
    // Mostrar el total final
    Escribir "--------------------------"
    Escribir "TOTAL A PAGAR: $", total_final
    Escribir "¡Gracias por tu visita!"
	
FinAlgoritmo
