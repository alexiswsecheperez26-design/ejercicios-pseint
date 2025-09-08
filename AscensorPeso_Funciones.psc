Algoritmo AscensorPeso_Funciones
	// 1. Definir variables principales
	Definir peso_usuario Como Real;
	Definir piso_deseado Como Entero;
	Definir limite_peso_ascensor Como Real;
	
	// 2. Asignar el l�mite de peso
	limite_peso_ascensor <- 125; // l�mite en kg
	
	// 3. Obtener el peso del usuario utilizando una funci�n
	peso_usuario <- SolicitarPeso();
	
	// 4. Obtener el piso deseado utilizando una funci�n
	piso_deseado <- SolicitarPiso(); // Reutilizamos SolicitarPiso de un ejemplo anterior, o la creamos aqu�.
	
	// 5. Verificar si el peso es adecuado y mover el ascensor usando funciones
	Si EsPesoAdecuado(peso_usuario, limite_peso_ascensor) Entonces
		Escribir "El peso es adecuado. Puede usar el ascensor.";
		// 6. Mover el ascensor (aqu� tambi�n validamos el piso si no se hizo antes)
		MoverAscensor(piso_deseado);
	Sino
		Escribir "El ascensor est� sobrecargado ("  peso_usuario  " kg). El l�mite es "  limite_peso_ascensor  " kg.";
	FinSi
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver el peso del usuario
Funcion peso_ingresado <- SolicitarPeso()
	Definir peso_ingresado Como Real;
	Escribir "Ingrese su peso (kg):";
	Leer peso_ingresado;
FinFuncion

// Funci�n para verificar si el peso est� dentro del l�mite permitido
Funcion es_valido <- EsPesoAdecuado(peso_actual, limite_maximo)
	
	Definir es_valido Como Logico;
	
	Si peso_actual <= limite_maximo Entonces
		es_valido <- Verdadero;
	Sino
		es_valido <- Falso;
	FinSi
FinFuncion

// Funci�n para solicitar y devolver el piso al usuario (reutilizada del ejemplo anterior)
Funcion piso_ingresado <- SolicitarPiso()
	Definir piso_ingresado Como Entero;
	Escribir "Ingrese el piso al que desea ir (1 a 10):";
	Leer piso_ingresado;
FinFuncion

// Subproceso para simular el movimiento del ascensor, incluyendo la validaci�n del piso
SubProceso MoverAscensor(piso)
	
	
	// Aunque el ejercicio original solo verificaba el peso, es buena pr�ctica
	// validar tambi�n el piso aqu� si no se hizo en otro lugar.
	Si piso >= 1 Y piso <= 10 Entonces
		Escribir "El ascensor se mueve al piso ", piso;
	Sino
		Escribir "Error: Piso inv�lido ("  piso  "). Por favor, ingrese un n�mero entre 1 y 10.";
	FinSi
FinSubProceso
