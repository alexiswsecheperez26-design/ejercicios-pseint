Algoritmo CostoPorTiempo
    Dimension tiempos_horas[10], tarifas_por_hora[10] // Max 10 registros
    Dimension costos_totales[10]
    Definir opcion Como Entero
    Definir i, num_registros_registrados Como Entero
    Definir tiempo_horas_input, tarifa_por_hora_input, costo_total_calculado Como Real
    
    num_registros_registrados = 1
    
    Repetir
        Escribir "--- C�lculo de Costo Total por Tiempo y Tarifa ---"
        Escribir "1. A�adir registro de Costo"
        Escribir "2. Modificar un registro"
        Escribir "3. Mostrar registros y costos totales"
        Escribir "4. Salir"
        Escribir "Ingrese su opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1: // A�adir registro
                Si num_registros_registrados < 10 Entonces
                    Escribir "Ingrese el tiempo en horas para el registro ", num_registros_registrados + 1, ": "
                    Leer tiempo_horas_input
                    Escribir "Ingrese la tarifa por hora para el registro ", num_registros_registrados + 1, ": "
                    Leer tarifa_por_hora_input
                    
                    tiempos_horas[num_registros_registrados] = tiempo_horas_input
                    tarifas_por_hora[num_registros_registrados] = tarifa_por_hora_input
                    
                    costo_total_calculado = tiempo_horas_input * tarifa_por_hora_input
                    costos_totales[num_registros_registrados] = costo_total_calculado
                    
                    num_registros_registrados = num_registros_registrados + 1
                    Escribir "Registro a�adido correctamente."
                Sino
                    Escribir "No se pueden a�adir m�s registros. L�mite alcanzado."
                FinSi
            2: // Modificar un registro
                Si num_registros_registrados > 0 Entonces
                    Escribir "Ingrese el n�mero del registro a modificar (1-", num_registros_registrados, "): "
                    Leer i
                    Si i >= 1 Y i <= num_registros_registrados Entonces
                        Escribir "Ingrese el nuevo tiempo en horas para el registro ", i, ": "
                        Leer tiempo_horas_input
                        Escribir "Ingrese la nueva tarifa por hora para el registro ", i, ": "
                        Leer tarifa_por_hora_input
                        
                        tiempos_horas[i-1] = tiempo_horas_input
                        tarifas_por_hora[i-1] = tarifa_por_hora_input
                        
                        costo_total_calculado = tiempo_horas_input * tarifa_por_hora_input
                        costos_totales[i-1] = costo_total_calculado
                        
                        Escribir "Registro modificado correctamente."
                    Sino
                        Escribir "N�mero de registro inv�lido."
                    FinSi
                Sino
                    Escribir "No hay registros para modificar."
                FinSi
            3: // Mostrar registros y costos totales
                Si num_registros_registrados > 0 Entonces
                    Escribir "Listado de Costos Totales:"
                    Para i = 1 Hasta num_registros_registrados - 1 Hacer
                        Escribir "--- Registro ", i + 1, " ---"
                        Escribir "  Tiempo (horas): ", tiempos_horas[i]
                        Escribir "  Tarifa por hora: ", tarifas_por_hora[i]
                        Escribir "  Costo Total: ", costos_totales[i]
                    FinPara
                Sino
                    Escribir "No hay registros."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de costo por tiempo."
            De Otro Modo:
                Escribir "Opci�n inv�lida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo