Proceso MonitoreoTemperatura
	
    Definir cantidad, tempMin, tempMax Como Real
	
    // Solicita datos principales al usuario
    Llamar SolicitarDatos(cantidad, tempMin, tempMax)
	
    // Procesar habitaciones
    Llamar EvaluarHabitaciones(cantidad, tempMin, tempMax)
	
FinProceso

// Función para solicitar la cantidad de habitaciones y el rango de temperatura
SubProceso SolicitarDatos(Salir cantidad, Salir tempMin, Salir tempMax)
    Escribir "Ingrese la cantidad de habitaciones a evaluar:"
    Leer cantidad
    Escribir "Ingrese la temperatura mínima permitida:"
    Leer tempMin
    Escribir "Ingrese la temperatura máxima permitida:"
    Leer tempMax
FinSubProceso

// Función que recorre las habitaciones y evalúa cada temperatura
SubProceso EvaluarHabitaciones(cantidad, tempMin, tempMax)
    Definir i Como Entero
    Definir temperatura Como Real
	
    Para i <- 1 Hasta cantidad Con Paso 1
        Escribir "Ingrese la temperatura de la habitación ", i, ":"
        Leer temperatura
        Llamar VerificarTemperatura(i, temperatura, tempMin, tempMax)
    FinPara
FinSubProceso

// Función para verificar si la temperatura está fuera del rango
SubProceso VerificarTemperatura(habitacion, temperatura, tempMin, tempMax)
    Si temperatura < tempMin o temperatura > tempMax Entonces
        Escribir "?? Alerta: La habitación ", habitacion, " está fuera del rango permitido."
    SiNo
        Escribir "? La habitación ", habitacion, " está dentro del rango."
    FinSi
	
FinSubProceso


