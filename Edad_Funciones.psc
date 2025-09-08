Algoritmo Edad_Funciones
	// 1. Declarar la variable principal en el algoritmo
	Definir edad_ingresada Como Entero;
	
	// 2. Solicitar la edad al usuario utilizando una función
	edad_ingresada <- SolicitarEdad();
	
	// 3. Mostrar la edad obtenida utilizando un subproceso
	MostrarEdad(edad_ingresada);
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Función para solicitar y devolver la edad del usuario
Funcion edad_obtenida <- SolicitarEdad()
	// Declaración de variables locales para la función
	Definir edad_obtenida Como Entero;
	
	Escribir "Digite su edad:";
	Leer edad_obtenida;
	// La función devuelve el valor de 'edad_obtenida'
FinFuncion

// Subproceso para mostrar la edad en pantalla
SubProceso MostrarEdad(edad_a_mostrar)
	// Declaración de variables locales para el subproceso
	
	Escribir "Tienes ", edad_a_mostrar, " años.";
FinSubProceso
