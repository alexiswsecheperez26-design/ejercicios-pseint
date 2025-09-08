Algoritmo AscensorPeso_Funciones
	// 1. Definir variables principales
	Definir peso_usuario Como Real;
	Definir piso_deseado Como Entero;
	Definir limite_peso_ascensor Como Real;
	
	// 2. Asignar el límite de peso
	limite_peso_ascensor <- 125; // límite en kg
	
	// 3. Obtener el peso del usuario utilizando una función
	peso_usuario <- SolicitarPeso();
	
	// 4. Obtener el piso deseado utilizando una función
	piso_deseado <- SolicitarPiso(); // Reutilizamos SolicitarPiso de un ejemplo anterior, o la creamos aquí.
	
	// 5. Verificar si el peso es adecuado y mover el ascensor usando funciones
	Si EsPesoAdecuado(peso_usuario, limite_peso_ascensor) Entonces
		Escribir "El peso es adecuado. Puede usar el ascensor.";
		// 6. Mover el ascensor (aquí también validamos el piso si no se hizo antes)
		MoverAscensor(piso_deseado);
	Sino
		Escribir "El ascensor está sobrecargado ("  peso_usuario  " kg). El límite es "  limite_peso_ascensor  " kg.";
	FinSi
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Función para solicitar y devolver el peso del usuario
Funcion peso_ingresado <- SolicitarPeso()
	Definir peso_ingresado Como Real;
	Escribir "Ingrese su peso (kg):";
	Leer peso_ingresado;
FinFuncion

// Función para verificar si el peso está dentro del límite permitido
Funcion es_valido <- EsPesoAdecuado(peso_actual, limite_maximo)
	
	Definir es_valido Como Logico;
	
	Si peso_actual <= limite_maximo Entonces
		es_valido <- Verdadero;
	Sino
		es_valido <- Falso;
	FinSi
FinFuncion

// Función para solicitar y devolver el piso al usuario (reutilizada del ejemplo anterior)
Funcion piso_ingresado <- SolicitarPiso()
	Definir piso_ingresado Como Entero;
	Escribir "Ingrese el piso al que desea ir (1 a 10):";
	Leer piso_ingresado;
FinFuncion

// Subproceso para simular el movimiento del ascensor, incluyendo la validación del piso
SubProceso MoverAscensor(piso)
	
	
	// Aunque el ejercicio original solo verificaba el peso, es buena práctica
	// validar también el piso aquí si no se hizo en otro lugar.
	Si piso >= 1 Y piso <= 10 Entonces
		Escribir "El ascensor se mueve al piso ", piso;
	Sino
		Escribir "Error: Piso inválido ("  piso  "). Por favor, ingrese un número entre 1 y 10.";
	FinSi
FinSubProceso
