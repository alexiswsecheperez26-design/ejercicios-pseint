Algoritmo Estudiante_Funciones
	// 1. Declarar la variable principal en el algoritmo
	Definir estado_estudiante Como Logico;
	
	// 2. Tomar el dato de si es estudiante utilizando una funci�n
	estado_estudiante <- SolicitarEstadoEstudiante();
	
	// 3. Mostrar el resultado utilizando un subproceso
	MostrarEstadoEstudiante(estado_estudiante);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar al usuario si es estudiante y devolver el valor l�gico
Funcion es_estudiante_obtenido <- SolicitarEstadoEstudiante()
	// Declaraci�n de variables locales para la funci�n
	Definir es_estudiante_obtenido Como Logico;
	
	Escribir "�Es usted estudiante? (Verdadero/Falso): ";
	Leer es_estudiante_obtenido;
	// La funci�n devuelve el valor de 'es_estudiante_obtenido'
FinFuncion

// Subproceso para mostrar el estado de estudiante en pantalla
SubProceso MostrarEstadoEstudiante(estado_a_mostrar)
	// Declaraci�n de variables locales para el subproceso
	
	Escribir "�Es un estudiante?: ", estado_a_mostrar;
FinSubProceso
