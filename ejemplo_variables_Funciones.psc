Algoritmo ejemplo_variables_Funciones
	// 1. Declarar variables principales en el algoritmo
	Definir nombre_del_cliente Como Caracter;
	Definir mensaje_saludo Como Caracter;
	
	// 2. Tomar el nombre del cliente utilizando una función
	nombre_del_cliente <- ObtenerNombreCliente();
	
	// 3. Procesar los datos (generar el saludo) utilizando una función
	mensaje_saludo <- GenerarSaludo(nombre_del_cliente);
	
	// 4. Mostrar los resultados utilizando un subproceso
	MostrarSaludo(mensaje_saludo);
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Función para solicitar y devolver el nombre del cliente
Funcion nombre_obtenido <- ObtenerNombreCliente()
	// Declaración de variables locales para la función
	Definir nombre_obtenido Como Caracter;
	
	Escribir "Hola: ";
	Leer nombre_obtenido;
	// La función devuelve el valor de 'nombre_obtenido'
FinFuncion

// Función para generar el mensaje de saludo
Funcion saludo_generado <- GenerarSaludo(nombre_param)
	// Declaración de variables locales para la función
	
	Definir saludo_generado Como Caracter;
	
	saludo_generado <- 'Bienvenido... ' + nombre_param;
	// La función devuelve el valor de 'saludo_generado'
FinFuncion

// Subproceso para mostrar el saludo en pantalla
SubProceso MostrarSaludo(saludo_a_mostrar)
	// Declaración de variables locales para el subproceso
	
	Escribir saludo_a_mostrar;
FinSubProceso