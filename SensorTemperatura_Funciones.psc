Algoritmo SensorTemperatura_Funciones
	// 1. Declarar la variable principal en el algoritmo
	Definir temperatura_actual Como Real;
	Definir es_temperatura_ok Como Logico;
	Definir temp_minima, temp_maxima Como Real;
	
	// Establecer los rangos de temperatura (podrían ser parámetros de una función también)
	temp_minima <- 18;
	temp_maxima <- 25;
	
	// 2. Solicitar la temperatura al usuario utilizando una función
	temperatura_actual <- SolicitarTemperatura();
	
	// 3. Verificar si la temperatura es adecuada utilizando una función
	es_temperatura_ok <- EsTemperaturaAdecuada(temperatura_actual, temp_minima, temp_maxima);
	
	// 4. Mostrar el resultado de la verificación utilizando un subproceso
	MostrarEstadoTemperatura(es_temperatura_ok, temperatura_actual);
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Función para solicitar y devolver la temperatura al usuario
Funcion temp_ingresada <- SolicitarTemperatura()
	// Declaración de variables locales para la función
	Definir temp_ingresada Como Real;
	
	Escribir "Ingrese la temperatura actual (°C):";
	Leer temp_ingresada;
	// La función devuelve el valor de 'temp_ingresada'
FinFuncion

// Función para verificar si la temperatura está dentro del rango permitido
Funcion es_valida <- EsTemperaturaAdecuada(temp_param, min_temp_param, max_temp_param)
	// Declaración de variables locales para la función
	
	Definir es_valida Como Logico;
	
	Si temp_param >= min_temp_param Y temp_param <= max_temp_param Entonces
		es_valida <- Verdadero;
	Sino
		es_valida <- Falso;
	FinSi
	// La función devuelve el valor de 'es_valida'
FinFuncion

// Subproceso para mostrar el mensaje correspondiente al estado de la temperatura
SubProceso MostrarEstadoTemperatura(esta_ok, temp_mostrada)
	// Declaración de variables locales para el subproceso
	
	
	Si esta_ok Entonces
	Escribir "La temperatura (", temp_mostrada 2, "°C) es adecuada.";
	Sino
	Escribir "La temperatura (", temp_mostrada 2, "°C) está fuera del rango deseado (18°C a 25°C).";
	FinSi
FinSubProceso
