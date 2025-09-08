Algoritmo Precio_Funciones
	// 1. Declarar la variable principal en el algoritmo
	Definir precio_articulo Como Real;
	
	// 2. Tomar el precio del usuario utilizando una funci�n
	precio_articulo <- SolicitarPrecio();
	
	// 3. Mostrar el precio obtenido utilizando un subproceso
	MostrarPrecio(precio_articulo);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver el precio al usuario
Funcion precio_obtenido <- SolicitarPrecio()
	// Declaraci�n de variables locales para la funci�n
	Definir precio_obtenido Como Real;
	
	Escribir "Digite el precio:";
	Leer precio_obtenido;
	// La funci�n devuelve el valor de 'precio_obtenido'
FinFuncion

// Subproceso para mostrar el precio en pantalla
SubProceso MostrarPrecio(precio_a_mostrar)
	// Declaraci�n de variables locales para el subproceso	
	
Escribir "El precio del art�culo es $", precio_a_mostrar 2; // Formato a 2 decimales para precios
FinSubProceso
