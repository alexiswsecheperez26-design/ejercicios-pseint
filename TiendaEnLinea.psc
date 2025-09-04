Algoritmo TiendaEnLinea
	// Definición de variables para el inventario
	Dimension nombreProducto[4],precioProducto[4],stockProducto[4]
	// Variables para el carrito de compras
	Dimension carritoProducto[4],carritoCantidad[4]
	Definir i,opcion_,cantidad,continuarComprando,metodoPago Como Entero
	Definir totalCompra,iva,montoFinal,descuento,totalAPagar Como Real
	Definir nombreProducto,carritoProducto Como Caracter
	Definir precioProducto,stockProducto,carritoCantidad Como Entero
	// --- 1. Registro inicial de los 4 productos en el inventario ---
	Escribir '--------------------------------------------------'
	Escribir '--- REGISTRO DE INVENTARIO DE LA TIENDA ---'
	Escribir '--------------------------------------------------'
	Para i<-1 Hasta 4 Hacer
		Escribir 'Ingrese el nombre del producto ',i,':'
		Leer nombreProducto[i]
		Escribir 'Ingrese el precio de ',nombreProducto[i],':'
		Leer precioProducto[i]
		Escribir 'Ingrese la cantidad en stock de ',nombreProducto[i],':'
		Leer stockProducto[i]
		Escribir '--------------------------------------------------'
	FinPara
	// --- Ciclo principal de compras ---
	continuarComprando <- 1
	Mientras continuarComprando=1 Hacer
		// Reiniciar carrito para cada nueva compra
		Para i<-1 Hasta 4 Hacer
			carritoProducto[i] <- ''
			carritoCantidad[i] <- 0
		FinPara
		totalCompra <- 0
		// --- 2. Menú interactivo de compra ---
		Repetir
			Escribir ''
			Escribir '**************************************************'
			Escribir '***            MENÚ DE COMPRAS                 ***'
			Escribir '**************************************************'
			Escribir 'Productos disponibles:'
			Para i<-1 Hasta 4 Hacer
				Escribir i,'. ',nombreProducto[i],' - Precio: $',precioProducto[i],' - Stock: ',stockProducto[i]
			FinPara
			Escribir '5. Finalizar compra y proceder al pago'
			Escribir '--------------------------------------------------'
			Escribir 'Seleccione el producto que desea agregar al carrito:'
			Leer opcion_
			Si opcion_>=1 Y opcion_<=4 Entonces
				Si stockProducto[opcion_]>0 Entonces
					Escribir 'Ingrese la cantidad de ',nombreProducto[opcion_],' que desea comprar:'
					Leer cantidad
					Si cantidad>0 Y cantidad<=stockProducto[opcion_] Entonces
						// Actualizar el stock
						stockProducto[opcion_] <- stockProducto[opcion_]-cantidad
						// Agregar al carrito
						carritoProducto[opcion_] <- nombreProducto[opcion_]
						carritoCantidad[opcion_] <- carritoCantidad[opcion_]+cantidad
						// Calcular el total parcial
						totalCompra <- totalCompra+(precioProducto[opcion_]*cantidad)
						Escribir ''
						Escribir '¡Producto agregado al carrito con éxito!'
						Escribir 'Stock actualizado de ',nombreProducto[opcion_],': ',stockProducto[opcion_]
					SiNo
						Escribir 'Cantidad no válida o superior al stock disponible. Intente de nuevo.'
					FinSi
				SiNo
					Escribir 'Producto agotado. No se puede agregar al carrito.'
				FinSi
			SiNo
				Si opcion_<>5 Entonces
					Escribir 'Opción no válida. Por favor, seleccione un producto del 1 al 4 o 5 para finalizar.'
				FinSi
			FinSi
		Hasta Que opcion_=5
		// --- 3. Cálculo de impuestos y total a pagar ---
		Si totalCompra>0 Entonces
			iva <- totalCompra*0.19 // Suponiendo un IVA del 19 MOD 
			montoFinal <- totalCompra+iva
			Escribir ''
			Escribir '--------------------------------------------------'
			Escribir '---              RESUMEN DE COMPRA             ---'
			Escribir '--------------------------------------------------'
			Escribir 'Productos en el carrito:'
			Para i<-1 Hasta 4 Hacer
				Si carritoCantidad[i]>0 Entonces
					Escribir '- ',carritoProducto[i],' x ',carritoCantidad[i]
				FinSi
			FinPara
			Escribir 'Subtotal: $',totalCompra
			Escribir 'IVA (19%): $',iva
			Escribir 'Monto Final: $',montoFinal
			Escribir '--------------------------------------------------'
			// --- 4. Selección de método de pago y aplicación de descuentos ---
			descuento <- 0
			Repetir
				Escribir 'Seleccione su método de pago:'
				Escribir '1. Tarjeta (5% de descuento)'
				Escribir '2. Efectivo (10% de descuento)'
				Escribir '3. Transferencia (Sin descuento)'
				Leer metodoPago
				Segun metodoPago  Hacer
					1:
						// Tarjeta
						descuento <- montoFinal*0.05
						totalAPagar <- montoFinal-descuento
						Escribir 'Descuento por pago con tarjeta: $',descuento
					2:
						// Efectivo
						descuento <- montoFinal*0.10
						totalAPagar <- montoFinal-descuento
						Escribir 'Descuento por pago en efectivo: $',descuento
					3:
						// Transferencia
						totalAPagar <- montoFinal
						Escribir 'No se aplican descuentos por pago con transferencia.'
					De Otro Modo:
						Escribir 'Opción de pago no válida. Intente de nuevo.'
				FinSegun
			Hasta Que metodoPago>=1 Y metodoPago<=3
			Escribir '--------------------------------------------------'
			Escribir 'TOTAL A PAGAR: $',totalAPagar
			Escribir '--------------------------------------------------'
			Escribir '¡Gracias por su compra!'
			Escribir ''
		SiNo
			Escribir 'No se agregaron productos al carrito.'
		FinSi
		// --- 5. Opción de continuar o finalizar la sesión ---
		Escribir '¿Desea realizar otra compra?'
		Escribir '1. Sí'
		Escribir '2. No (Finalizar programa)'
		Leer continuarComprando
		Si continuarComprando<>1 Entonces
			Escribir 'Sesión finalizada. ¡Vuelva pronto!'
		FinSi
	FinMientras
FinAlgoritmo
