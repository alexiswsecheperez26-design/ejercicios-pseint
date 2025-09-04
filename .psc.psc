Proceso MonitoreoTemperatura
	
    Definir cantidad, tempMin, tempMax Como Real
	
    // Solicita datos principales al usuario
    Llamar SolicitarDatos(cantidad, tempMin, tempMax)
	
    // Procesar habitaciones
    Llamar EvaluarHabitaciones(cantidad, tempMin, tempMax)
	
FinProceso

// Funci�n para solicitar la cantidad de habitaciones y el rango de temperatura
SubProceso SolicitarDatos(Salir cantidad, Salir tempMin, Salir tempMax)
    Escribir "Ingrese la cantidad de habitaciones a evaluar:"
    Leer cantidad
    Escribir "Ingrese la temperatura m�nima permitida:"
    Leer tempMin
    Escribir "Ingrese la temperatura m�xima permitida:"
    Leer tempMax
FinSubProceso

// Funci�n que recorre las habitaciones y eval�a cada temperatura
SubProceso EvaluarHabitaciones(cantidad, tempMin, tempMax)
    Definir i Como Entero
    Definir temperatura Como Real
	
    Para i <- 1 Hasta cantidad Con Paso 1
        Escribir "Ingrese la temperatura de la habitaci�n ", i, ":"
        Leer temperatura
        Llamar VerificarTemperatura(i, temperatura, tempMin, tempMax)
    FinPara
FinSubProceso

// Funci�n para verificar si la temperatura est� fuera del rango
SubProceso VerificarTemperatura(habitacion, temperatura, tempMin, tempMax)
    Si temperatura < tempMin o temperatura > tempMax Entonces
        Escribir "?? Alerta: La habitaci�n ", habitacion, " est� fuera del rango permitido."
    SiNo
        Escribir "? La habitaci�n ", habitacion, " est� dentro del rango."
    FinSi
	
FinSubProceso


