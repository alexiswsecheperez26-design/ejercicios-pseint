Algoritmo Factura_Funciones
	// 1. Declaraci�n de variables en el algoritmo principal
	Definir nombre_cliente Como Caracter;
	Definir nom_producto_factura Como Caracter;
	Definir cantidad_productos Como Entero;
	Definir precio_unitario Como Real;
	Definir es_estudiante_cliente Como Logico;
	Definir subtotal_calculado, impuesto_calculado, total_a_pagar Como Real;
	Definir tipo_venta_clasificado Como Caracter; // Para almacenar el tipo de venta
	
	// 2. Asignaci�n de datos fijos (o que podr�an venir de otra fuente/funci�n)
	nom_producto_factura <- "Camisa unisex";
	precio_unitario <- 50000;
	
	// 3. Toma de datos del usuario utilizando funciones
	nombre_cliente <- SolicitarNombreCliente();
	Escribir "Producto: ", nom_producto_factura;
	Escribir "Precio unitario: $", precio_unitario;
	cantidad_productos <- SolicitarCantidadProductos();
	es_estudiante_cliente <- SolicitarEstadoEstudiante();
	
	// 4. Procesar datos utilizando funciones
	subtotal_calculado <- CalcularSubtotal(cantidad_productos, precio_unitario);
	impuesto_calculado <- CalcularImpuesto(subtotal_calculado, es_estudiante_cliente);
	total_a_pagar <- CalcularTotal(subtotal_calculado, impuesto_calculado);
	tipo_venta_clasificado <- ClasificarTipoVenta(cantidad_productos);
	
	// 5. Mostrar la factura completa utilizando un subproceso
	MostrarFactura(nombre_cliente, nom_producto_factura, cantidad_productos, precio_unitario, _subtotal_calculado, impuesto_calculado, total_a_pagar, tipo_venta_clasificado);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver el nombre del cliente
Funcion nombre_obtenido <- SolicitarNombreCliente()
	Definir nombre_obtenido Como Caracter;
	Escribir "Ingrese nombre del cliente:";
	Leer nombre_obtenido;
FinFuncion

// Funci�n para solicitar y devolver la cantidad de productos
Funcion cantidad_obtenida <- SolicitarCantidadProductos()
	Definir cantidad_obtenida Como Entero;
	Escribir "Ingrese la cantidad de productos:";
	Leer cantidad_obtenida;
	// Podr�amos a�adir aqu� una validaci�n para cantidad_obtenida > 0 si quisi�ramos
FinFuncion

// Funci�n para solicitar al usuario si es estudiante y devolver el valor l�gico
// (Reutilizada del ejemplo anterior)
Funcion es_estudiante_obtenido <- SolicitarEstadoEstudiante()
	Definir es_estudiante_obtenido Como Logico;
	Escribir "El cliente es estudiante (verdadero/falso):";
	Leer es_estudiante_obtenido;
FinFuncion

// Funci�n para calcular el subtotal de la compra
Funcion subtotal_calc <- CalcularSubtotal(cantidad_param, precio_param)
	
	Definir subtotal_calc Como Real;
	subtotal_calc <- cantidad_param * precio_param;
FinFuncion

// Funci�n para calcular el impuesto basado en el subtotal y si es estudiante
Funcion impuesto_calc <- CalcularImpuesto(subtotal_param, es_estudiante_param)
	
	Definir impuesto_calc Como Real;
	
	Si es_estudiante_param Entonces
		impuesto_calc <- subtotal_param * 0.05; // 5% de impuesto para estudiantes
	SiNo
		impuesto_calc <- subtotal_param * 0.13; // 13% de impuesto para no estudiantes
	FinSi
FinFuncion

// Funci�n para calcular el total a pagar
Funcion total_calc <- CalcularTotal(subtotal_param, impuesto_param)
	
	Definir total_calc Como Real;
	total_calc <- subtotal_param + impuesto_param;
FinFuncion

// Funci�n para clasificar el tipo de venta (Minorista/Mayorista)
Funcion tipo_venta_clasif <- ClasificarTipoVenta(cantidad_param)
	
	Definir tipo_venta_clasif Como Caracter;
	
	Si cantidad_param < 20 Entonces
		tipo_venta_clasif <- "Minorista (C�digo: 001)";
	SiNo
		tipo_venta_clasif <- "Mayorista (C�digo: 002)";
	FinSi
FinFuncion

// Subproceso para mostrar la factura completa
SubProceso MostrarFactura(nombre_cli, producto_nom, cant_prod, prec_uni, _subt_final, imp_final, tot_final, tipo_venta_final)
	// Declaraci�n de variables locales para el subproceso
	
	
	Escribir "----------------------";
	Escribir "----- FACTURA -----";
	Escribir "----------------------";
	Escribir "Cliente: ", nombre_cli;
	Escribir "Producto: ", producto_nom;
	Escribir "Cantidad: ", cant_prod;
	Escribir "Precio unitario: $", prec_uni;
	Escribir "";
	Escribir "----------------------";
Escribir "Subtotal: $", subt_final 2; // Formatear a 2 decimales
Escribir "Impuesto: $", imp_final 2;
Escribir "TOTAL A PAGAR: $", tot_final 2;
	Escribir "Tipo de venta: ", tipo_venta_final;
	Escribir "----------------------";
FinSubProceso