Algoritmo ejemplo_variables_Funciones
	// 1. Declarar variables principales en el algoritmo
	Definir nombre_del_cliente Como Caracter;
	Definir mensaje_saludo Como Caracter;
	
	// 2. Tomar el nombre del cliente utilizando una funci�n
	nombre_del_cliente <- ObtenerNombreCliente();
	
	// 3. Procesar los datos (generar el saludo) utilizando una funci�n
	mensaje_saludo <- GenerarSaludo(nombre_del_cliente);
	
	// 4. Mostrar los resultados utilizando un subproceso
	MostrarSaludo(mensaje_saludo);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver el nombre del cliente
Funcion nombre_obtenido <- ObtenerNombreCliente()
	// Declaraci�n de variables locales para la funci�n
	Definir nombre_obtenido Como Caracter;
	
	Escribir "Hola: ";
	Leer nombre_obtenido;
	// La funci�n devuelve el valor de 'nombre_obtenido'
FinFuncion

// Funci�n para generar el mensaje de saludo
Funcion saludo_generado <- GenerarSaludo(nombre_param)
	// Declaraci�n de variables locales para la funci�n
	
	Definir saludo_generado Como Caracter;
	
	saludo_generado <- 'Bienvenido... ' + nombre_param;
	// La funci�n devuelve el valor de 'saludo_generado'
FinFuncion

// Subproceso para mostrar el saludo en pantalla
SubProceso MostrarSaludo(saludo_a_mostrar)
	// Declaraci�n de variables locales para el subproceso
	
	Escribir saludo_a_mostrar;
FinSubProceso