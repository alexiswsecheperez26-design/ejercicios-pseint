Algoritmo AscensorConTemperatura_Funciones
	// 1. Definir tipo de variables (globales o que se usarán en el algoritmo principal)
	Definir temperatura_actual Como Real;
	Definir piso_deseado Como Entero;
	Definir temp_minima, temp_maxima Como Real;
	
	// Configurar las temperaturas válidas
	temp_minima <- 18;
	temp_maxima <- 25;
	
	// 2. Obtener la temperatura actual usando una función
	temperatura_actual <- SolicitarTemperatura();
	
	// 3. Verificar si la temperatura es adecuada usando una función
	Si EsTemperaturaAdecuada(temperatura_actual, temp_minima, temp_maxima) Entonces
		Escribir "La temperatura es adecuada. Puede usar el ascensor.";
		
		// 4. Obtener el piso deseado usando una función
		piso_deseado <- SolicitarPiso();
		
		// 5. Verificar si el piso es válido y mover el ascensor usando una función
		MoverAscensor(piso_deseado);
	Sino
		Escribir "La temperatura no es adecuada ("  temperatura_actual  "°C). El ascensor no se moverá.";
		Escribir "Rango permitido: "  temp_minima  "°C a "  temp_maxima  "°C.";
	FinSi
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Función para solicitar y devolver la temperatura al usuario
Funcion temp_ingresada <- SolicitarTemperatura()
	Definir temp_ingresada Como Real;
	Escribir "Ingrese la temperatura actual (°C):";
	Leer temp_ingresada;
FinFuncion

// Función para verificar si la temperatura está dentro del rango permitido
Funcion es_valida <- EsTemperaturaAdecuada(temp, min_temp, max_temp)
	
	Definir es_valida Como Logico;
	
	Si temp >= min_temp Y temp <= max_temp Entonces
		es_valida <- Verdadero;
	Sino
		es_valida <- Falso;
	FinSi
FinFuncion

// Función para solicitar y devolver el piso al usuario
Funcion piso_ingresado <- SolicitarPiso()
	Definir piso_ingresado Como Entero;
	Escribir "Ingrese el piso al que desea ir (1 a 10):";
	Leer piso_ingresado;
FinFuncion

// Subproceso para simular el movimiento del ascensor, incluyendo la validación del piso
SubProceso MoverAscensor(piso)
	
	
	Si piso >= 1 Y piso <= 10 Entonces
		Escribir "El ascensor se mueve al piso ", piso;
		// Aquí se podría añadir lógica para simular el tiempo de viaje o animaciones.
	Sino
		Escribir "Error: Piso inválido ("  piso  "). Por favor, ingrese un número entre 1 y 10.";
	FinSi
FinSubProceso
