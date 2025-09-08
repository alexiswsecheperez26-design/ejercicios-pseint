Algoritmo Tienda_Funciones_SinReferencia
    // 1. Definir los precios base de los productos
    Definir precio_alimentos, precio_vestimenta, precio_electronicos Como Real;
    precio_alimentos <- 10.0;
    precio_vestimenta <- 25.0;
    precio_electronicos <- 150.0;
    
    // 2. Definir variables para la entrada del usuario en el algoritmo principal
    Definir tipo_producto_seleccionado Como Caracter;
    Definir cantidad_comprada Como Entero;
    
    // 3. Definir variables para los cálculos en el algoritmo principal
    Definir costo_bruto, descuento_aplicado, costo_final Como Real;
    
    // 4. Mostrar bienvenida e información de productos (Subproceso)
    MostrarBienvenidaTienda();
    
    // 5. Solicitar y validar el tipo de producto (Función)
    tipo_producto_seleccionado <- SolicitarYValidarTipoProducto();
    
    // 6. Solicitar y validar la cantidad de unidades (Función)
    cantidad_comprada <- SolicitarYValidarCantidad();
    
    // 7. Calcular el costo sin descuento, el descuento y el costo total usando funciones individuales
    costo_bruto <- CalcularCostoBruto(tipo_producto_seleccionado, cantidad_comprada, _precio_alimentos, precio_vestimenta, precio_electronicos);
    
    descuento_aplicado <- CalcularDescuento(tipo_producto_seleccionado, costo_bruto);
    
    costo_final <- CalcularCostoTotal(costo_bruto, descuento_aplicado);
    
    // 8. Mostrar el resumen de la compra (Subproceso)
    MostrarResumenCompra(costo_bruto, descuento_aplicado, costo_final);
    
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Subproceso para mostrar la bienvenida y la lista de productos
SubProceso MostrarBienvenidaTienda()
    Escribir "Bienvenido a la tienda";
    Escribir "-----------------------";
    Escribir "Tipos de productos disponibles:";
    Escribir "A - Alimentos";
    Escribir "V - Vestimenta";
    Escribir "E - Electrónicos";
    Escribir "";
FinSubProceso

// Función para solicitar y validar el tipo de producto (A, V o E)
Funcion tipo_prod_valido_retorno <- SolicitarYValidarTipoProducto()
    Definir tipo_prod_valido_retorno Como Caracter;
    
    Escribir "Ingrese el tipo de producto que desea comprar (A, V o E): ";
    Leer tipo_prod_valido_retorno;
    
    Mientras (Minusculas(tipo_prod_valido_retorno) <> "a" Y Minusculas(tipo_prod_valido_retorno) <> "v" Y Minusculas(tipo_prod_valido_retorno) <> "e") Hacer
        Escribir "Tipo de producto no válido. Por favor, ingrese A, V o E: ";
        Leer tipo_prod_valido_retorno;
    FinMientras
	finFuncion
	
	// Función para solicitar y validar la cantidad de unidades (debe ser un número positivo)
	Funcion cantidad_valida_retorno <- SolicitarYValidarCantidad()
		Definir cantidad_valida_retorno Como Entero;
		
		Escribir "Ingrese la cantidad de unidades que desea comprar: ";
		Leer cantidad_valida_retorno;
		
		Mientras cantidad_valida_retorno <= 0 Hacer
			Escribir "La cantidad de unidades debe ser un número positivo. Por favor, ingrese nuevamente: ";
			Leer cantidad_valida_retorno;
		FinMientras
		finFuncion
		
		// Función para calcular el costo sin descuento (costo bruto)
		Funcion costo_bruto_retorno <- CalcularCostoBruto(tipo_prod, cant, p_a, p_v, p_e)
			Definir costo_bruto_retorno Como Real;
			
			Segun Minusculas(tipo_prod) Hacer
				"a": costo_bruto_retorno <- cant * p_a;
				"v": costo_bruto_retorno <- cant * p_v;
				"e": costo_bruto_retorno <- cant * p_e;
				DeOtroModo:
					costo_bruto_retorno <- 0; // En caso de un error inesperado
					Escribir "Error: Tipo de producto no válido en CalcularCostoBruto.";
			FinSegun
			finFuncion
			
			// Función para calcular el descuento basado en el tipo de producto y el costo bruto
			Funcion descuento_retorno <- CalcularDescuento(tipo_prod, costo_bruto_param)
				Definir descuento_retorno Como Real;
				
				Segun Minusculas(tipo_prod) Hacer
					"a": descuento_retorno <- costo_bruto_param * 0.10; // 10% de descuento para Alimentos
					"v": descuento_retorno <- costo_bruto_param * 0.05; // 5% de descuento para Vestimenta
					"e": descuento_retorno <- 0;                      // Sin descuento para Electrónicos
					DeOtroModo:
						descuento_retorno <- 0; // En caso de un error inesperado
				FinSegun
				finFuncion
				
				// Función para calcular el costo total (después del descuento)
				Funcion costo_total_retorno <- CalcularCostoTotal(costo_bruto_param, descuento_param)
					Definir costo_total_retorno Como Real;
					costo_total_retorno <- costo_bruto_param - descuento_param;
					finFuncion
					
					// Subproceso para mostrar el resumen final de la compra
					SubProceso MostrarResumenCompra(costo_bruto_final, descuento_aplicado_final, costo_total_final)
						
						Escribir "";
						Escribir "Resumen de la compra";
						Escribir "--------------------";
					Escribir "Costo sin descuento: $", costo_bruto_final 2;
						Si descuento_aplicado_final > 0 Entonces
						Escribir "Descuento aplicado: $", descuento_aplicado_final 2;
						FinSi
					Escribir "Costo total a pagar: $", costo_total_final 2;
						Escribir "";
						Escribir "¡Gracias por su compra!";
finSubProceso