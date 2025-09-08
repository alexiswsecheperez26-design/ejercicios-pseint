Algoritmo SensorTemperaturaAlerta_Funciones
	// 1. Declarar variables principales
	Definir temperatura_actual Como Real;
	Definir umbral_alerta Como Real;
	Definir esta_en_alerta Como Logico;
	
	// 2. Asignar el umbral de alerta
	umbral_alerta <- 30; // ejemplo de umbral de alerta
	
	// 3. Solicitar la temperatura actual utilizando una funci�n
	temperatura_actual <- SolicitarTemperatura();
	
	// 4. Verificar el estado de la alerta utilizando una funci�n
	esta_en_alerta <- VerificarAlertaTemperatura(temperatura_actual, umbral_alerta);
	
	// 5. Mostrar el mensaje de alerta o normal utilizando un subproceso
	MostrarMensajeAlerta(esta_en_alerta, temperatura_actual, umbral_alerta);
	
FinAlgoritmo


// --- Definici�n de Funciones y Subprocesos ---

// Funci�n para solicitar y devolver la temperatura al usuario
// (Reutilizada de un ejemplo anterior, pero robustecida para posibles validaciones futuras)
Funcion temp_ingresada <- SolicitarTemperatura()
	Definir temp_ingresada Como Real;
	Escribir "Ingrese la temperatura actual (�C):";
	Leer temp_ingresada;
	// Aqu� se podr�a a�adir validaci�n para que la temperatura sea un n�mero v�lido, etc.
FinFuncion

// Funci�n para verificar si la temperatura est� por encima del umbral de alerta
Funcion en_alerta <- VerificarAlertaTemperatura(temp_param, umbral_param)
	
	Definir en_alerta Como Logico;
	
	Si temp_param > umbral_param Entonces
		en_alerta <- Verdadero;
	Sino
		en_alerta <- Falso;
	FinSi
FinFuncion

// Subproceso para mostrar el mensaje de alerta o normal
SubProceso MostrarMensajeAlerta(alerta_activa, temp_mostrada, umbral_mostrado)
	
	
	
	Si alerta_activa Entonces
	Escribir "ALERTA: La temperatura (", temp_mostrada 2, "�C) est� por encima del umbral (", umbral_mostrado 2, "�C).";
		Sino
		Escribir "La temperatura (", temp_mostrada 2, "�C) es normal (debajo del umbral de ", umbral_mostrado 2, "�C).";
			FinSi
FinSubProceso

