Algoritmo SistemaDeClasificacion
    // Declarar variables
    Definir puntos_a, puntos_b, opcion Como Entero
    Definir continuar Como Caracter
	
    // Inicializar los puntos de los equipos en 0
    puntos_a <- 0
    puntos_b <- 0
	
    Escribir "--- Sistema de Clasificaci�n del Campeonato ---"
    
    // Bucle para registrar m�ltiples partidos
    Repetir
        Escribir "" // L�nea en blanco para separar
        Escribir "--- Registro de Nuevo Partido ---"
        Escribir "Ingresa el resultado para el Equipo A:"
        Escribir "1. Ganado"
        Escribir "2. Perdido"
        Escribir "3. Empatado"
        Leer opcion
		
        // Usamos la estructura Segun para asignar los puntos
        Segun opcion Hacer
            1: // Equipo A gan�
                puntos_a <- puntos_a + 3
                Escribir "Resultado: Equipo A gana 3 puntos."
            2: // Equipo A perdi� (Equipo B gan�)
                puntos_b <- puntos_b + 3
                Escribir "Resultado: Equipo B gana 3 puntos."
            3: // Empate
                puntos_a <- puntos_a + 1
                puntos_b <- puntos_b + 1
                Escribir "Resultado: Ambos equipos suman 1 punto."
            De Otro Modo:
                Escribir "Opci�n no v�lida. No se sumaron puntos."
        FinSegun
		
        // Mostrar la clasificaci�n actualizada
        Escribir ""
        Escribir "--- Clasificaci�n Actual ---"
        Escribir "Equipo A: ", puntos_a, " puntos."
        Escribir "Equipo B: ", puntos_b, " puntos."
        Escribir "----------------------------"
		
        // Preguntar al usuario si quiere registrar otro partido
        Escribir "�Deseas registrar otro resultado? (s/n)"
        Leer continuar
		
    Hasta Que Minusculas(continuar) <> "s"
	
    Escribir ""
    Escribir "--- CLASIFICACI�N FINAL ---"
    Escribir "Equipo A: ", puntos_a, " puntos."
    Escribir "Equipo B: ", puntos_b, " puntos."
    Escribir "---------------------------"

	
FinAlgoritmo
