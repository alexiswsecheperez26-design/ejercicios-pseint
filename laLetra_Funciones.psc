Algoritmo laLetra_Funciones
	// 1. Declarar la variable principal en el algoritmo
	Definir letra_ingresada Como Caracter;
	
	// 2. Tomar la letra del usuario utilizando una funci�n
	letra_ingresada <- SolicitarLetra();
	
	// 3. Mostrar la letra ingresada utilizando un subproceso
	MostrarLetra(letra_ingresada);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver una letra al usuario
Funcion letra_obtenida <- SolicitarLetra()
	// Declaraci�n de variables locales para la funci�n
	Definir letra_obtenida Como Caracter;
	
	Escribir "Digite una letra:";
	Leer letra_obtenida;
	// La funci�n devuelve el valor de 'letra_obtenida'
FinFuncion

// Subproceso para mostrar la letra en pantalla
SubProceso MostrarLetra(letra_a_mostrar)
	// Declaraci�n de variables locales para el subproceso
		
	Escribir "La letra asignada es: ", letra_a_mostrar;
FinSubProceso