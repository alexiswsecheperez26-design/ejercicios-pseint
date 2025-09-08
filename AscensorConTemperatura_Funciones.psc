Algoritmo AscensorConTemperatura_Funciones
	// 1. Definir tipo de variables (globales o que se usar�n en el algoritmo principal)
	Definir temperatura_actual Como Real;
	Definir piso_deseado Como Entero;
	Definir temp_minima, temp_maxima Como Real;
	
	// Configurar las temperaturas v�lidas
	temp_minima <- 18;
	temp_maxima <- 25;
	
	// 2. Obtener la temperatura actual usando una funci�n
	temperatura_actual <- SolicitarTemperatura();
	
	// 3. Verificar si la temperatura es adecuada usando una funci�n
	Si EsTemperaturaAdecuada(temperatura_actual, temp_minima, temp_maxima) Entonces
		Escribir "La temperatura es adecuada. Puede usar el ascensor.";
		
		// 4. Obtener el piso deseado usando una funci�n
		piso_deseado <- SolicitarPiso();
		
		// 5. Verificar si el piso es v�lido y mover el ascensor usando una funci�n
		MoverAscensor(piso_deseado);
	Sino
		Escribir "La temperatura no es adecuada ("  temperatura_actual  "�C). El ascensor no se mover�.";
		Escribir "Rango permitido: "  temp_minima  "�C a "  temp_maxima  "�C.";
	FinSi
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver la temperatura al usuario
Funcion temp_ingresada <- SolicitarTemperatura()
	Definir temp_ingresada Como Real;
	Escribir "Ingrese la temperatura actual (�C):";
	Leer temp_ingresada;
FinFuncion

// Funci�n para verificar si la temperatura est� dentro del rango permitido
Funcion es_valida <- EsTemperaturaAdecuada(temp, min_temp, max_temp)
	
	Definir es_valida Como Logico;
	
	Si temp >= min_temp Y temp <= max_temp Entonces
		es_valida <- Verdadero;
	Sino
		es_valida <- Falso;
	FinSi
FinFuncion

// Funci�n para solicitar y devolver el piso al usuario
Funcion piso_ingresado <- SolicitarPiso()
	Definir piso_ingresado Como Entero;
	Escribir "Ingrese el piso al que desea ir (1 a 10):";
	Leer piso_ingresado;
FinFuncion

// Subproceso para simular el movimiento del ascensor, incluyendo la validaci�n del piso
SubProceso MoverAscensor(piso)
	
	
	Si piso >= 1 Y piso <= 10 Entonces
		Escribir "El ascensor se mueve al piso ", piso;
		// Aqu� se podr�a a�adir l�gica para simular el tiempo de viaje o animaciones.
	Sino
		Escribir "Error: Piso inv�lido ("  piso  "). Por favor, ingrese un n�mero entre 1 y 10.";
	FinSi
FinSubProceso
