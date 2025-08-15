Algoritmo Factura
	
	// 1. Definir variables
	Definir nombre, nom_producto Como Caracter
	Definir cantidad_prod Como Entero
	Definir precio_uni, subtotal, impuesto, total Como Real
	Definir esEstudiante Como Logico
	
	// 2. Toma de datos
	Escribir "Ingrese nombre del cliente:"
	Leer nombre
	
	nom_producto <- "Camisa unisex" 
	precio_uni <- 50000
	
	Escribir "Producto: ", nom_producto
	Escribir "Precio unitario: $", precio_uni
	
	Escribir "Ingrese la cantidad de productos:"
	Leer cantidad_prod
	
	Escribir "El cliente es estudiante (verdadero/falso):"
	Leer esEstudiante 
	
	// 3. Procesar datos 
	subtotal <- cantidad_prod * precio_uni
	
	// Luego, con el subtotal ya calculado, se determina el impuesto
	Si esEstudiante Entonces
		impuesto <- subtotal * 0.05 // 5% de impuesto para estudiantes
	SiNo
		impuesto <- subtotal * 0.13 // 13% de impuesto para no estudiantes
	FinSi
	
	// se calcula el total sumando el subtotal y el impuesto
	total <- subtotal + impuesto 
	
	// L?gica adicional para tipo de venta
	Si cantidad_prod < 20 Entonces
		Escribir "Tipo de venta: Minorista (C?digo: 001)"
	SiNo
		Escribir "Tipo de venta: Mayorista (C?digo: 002)"
	FinSi
	
	// 4. Mostrar datos
	Escribir "----------------------"
	Escribir "----- FACTURA -----"
	Escribir "----------------------"
	Escribir "Cliente: ", nombre
	Escribir "Producto: ", nom_producto
	Escribir "Cantidad: ", cantidad_prod
	Escribir "Precio unitario: $", precio_uni
	Escribir ""
	Escribir "----------------------"
	Escribir "Subtotal: $", subtotal
	Escribir "Impuesto: $", impuesto
	Escribir "TOTAL A PAGAR: $", total
	Escribir "----------------------"
	
FinAlgoritmo
