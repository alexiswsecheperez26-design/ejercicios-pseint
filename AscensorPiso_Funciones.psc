Algoritmo AscensorPiso_Funciones
	// 1. Definir la variable principal
	Definir piso_deseado Como Entero;
	
	// 2. Solicitar el piso al usuario utilizando una funci�n
	piso_deseado <- SolicitarPiso();
	
	// 3. Mover el ascensor al piso solicitado, la funci�n tambi�n valida el piso
	MoverAscensor(piso_deseado);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver el piso deseado por el usuario
Funcion piso_ingresado <- SolicitarPiso()
	Definir piso_ingresado Como Entero;
	Escribir "Ingrese el piso al que desea ir (1 a 10):";
	Leer piso_ingresado;
FinFuncion

// Subproceso para simular el movimiento del ascensor, incluyendo la validaci�n del piso
SubProceso MoverAscensor(piso_destino)
	
	Si piso_destino >= 1 Y piso_destino <= 10 Entonces
		Escribir "El ascensor se mueve al piso ", piso_destino;
	Sino
		Escribir "Error: Piso inv�lido ("  piso_destino  "). Por favor, ingrese un n�mero entre 1 y 10.";
	FinSi
FinSubProceso