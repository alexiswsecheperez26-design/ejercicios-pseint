Algoritmo laLetra_Funciones
	// 1. Declarar la variable principal en el algoritmo
	Definir letra_ingresada Como Caracter;
	
	// 2. Tomar la letra del usuario utilizando una función
	letra_ingresada <- SolicitarLetra();
	
	// 3. Mostrar la letra ingresada utilizando un subproceso
	MostrarLetra(letra_ingresada);
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Función para solicitar y devolver una letra al usuario
Funcion letra_obtenida <- SolicitarLetra()
	// Declaración de variables locales para la función
	Definir letra_obtenida Como Caracter;
	
	Escribir "Digite una letra:";
	Leer letra_obtenida;
	// La función devuelve el valor de 'letra_obtenida'
FinFuncion

// Subproceso para mostrar la letra en pantalla
SubProceso MostrarLetra(letra_a_mostrar)
	// Declaración de variables locales para el subproceso
		
	Escribir "La letra asignada es: ", letra_a_mostrar;
FinSubProceso