Algoritmo SistemaDeClasificacion
    // Declarar variables
    Definir puntos_a, puntos_b, opcion Como Entero
    Definir continuar Como Caracter
	
    // Inicializar los puntos de los equipos en 0
    puntos_a <- 0
    puntos_b <- 0
	
    Escribir "--- Sistema de Clasificación del Campeonato ---"
    
    // Bucle para registrar múltiples partidos
    Repetir
        Escribir "" // Línea en blanco para separar
        Escribir "--- Registro de Nuevo Partido ---"
        Escribir "Ingresa el resultado para el Equipo A:"
        Escribir "1. Ganado"
        Escribir "2. Perdido"
        Escribir "3. Empatado"
        Leer opcion
		
        // Usamos la estructura Segun para asignar los puntos
        Segun opcion Hacer
            1: // Equipo A ganó
                puntos_a <- puntos_a + 3
                Escribir "Resultado: Equipo A gana 3 puntos."
            2: // Equipo A perdió (Equipo B ganó)
                puntos_b <- puntos_b + 3
                Escribir "Resultado: Equipo B gana 3 puntos."
            3: // Empate
                puntos_a <- puntos_a + 1
                puntos_b <- puntos_b + 1
                Escribir "Resultado: Ambos equipos suman 1 punto."
            De Otro Modo:
                Escribir "Opción no válida. No se sumaron puntos."
        FinSegun
		
        // Mostrar la clasificación actualizada
        Escribir ""
        Escribir "--- Clasificación Actual ---"
        Escribir "Equipo A: ", puntos_a, " puntos."
        Escribir "Equipo B: ", puntos_b, " puntos."
        Escribir "----------------------------"
		
        // Preguntar al usuario si quiere registrar otro partido
        Escribir "¿Deseas registrar otro resultado? (s/n)"
        Leer continuar
		
    Hasta Que Minusculas(continuar) <> "s"
	
    Escribir ""
    Escribir "--- CLASIFICACIÓN FINAL ---"
    Escribir "Equipo A: ", puntos_a, " puntos."
    Escribir "Equipo B: ", puntos_b, " puntos."
    Escribir "---------------------------"

	
FinAlgoritmo
