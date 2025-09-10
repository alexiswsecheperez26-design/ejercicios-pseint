Algoritmo GananciaNeta
    Dimension ingresos[10], gastos[10] // Max 10 registros
    Dimension ganancias_netas[10]
    Definir opcion Como Entero
    Definir i, num_registros_registrados Como Entero
    Definir ingreso, gasto, ganancia_neta Como Real
    
    num_registros_registrados = 1
    
    Repetir
        Escribir "--- C�lculo de Ganancia Neta ---"
        Escribir "1. A�adir registro de Ingresos/Gastos"
        Escribir "2. Modificar un registro"
        Escribir "3. Mostrar registros y ganancia neta"
        Escribir "4. Salir"
        Escribir "Ingrese su opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1: // A�adir registro
                Si num_registros_registrados < 10 Entonces
                    Escribir "Ingrese el ingreso para el registro ", num_registros_registrados + 1, ": "
                    Leer ingreso
                    Escribir "Ingrese el gasto para el registro ", num_registros_registrados + 1, ": "
                    Leer gasto
                    
                    ingresos[num_registros_registrados] = ingreso
                    gastos[num_registros_registrados] = gasto
                    
                    ganancia_neta = ingreso - gasto
                    
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
                        Escribir "Ingrese el nuevo ingreso para el registro ", i, ": "
                        Leer ingreso
                        Escribir "Ingrese el nuevo gasto para el registro ", i, ": "
                        Leer gasto
                        
                        ingresos[i-1] = ingreso
                        gastos[i-1] = gasto
                        
                        ganancia_neta = ingreso - gasto
                        ganancias_netas[i-1] = ganancia_neta
                        
                        Escribir "Registro modificado correctamente."
                    Sino
                        Escribir "N�mero de registro inv�lido."
                    FinSi
                Sino
                    Escribir "No hay registros para modificar."
                FinSi
            3: // Mostrar registros y ganancia neta
                Si num_registros_registrados > 0 Entonces
                    Escribir "Listado de Ingresos, Gastos y Ganancias Netas:"
                    Para i = 1 Hasta num_registros_registrados - 1 Hacer
                        Escribir "--- Registro ", i + 1, " ---"
                        Escribir "  Ingreso: ", ingresos[i]
                        Escribir "  Gasto: ", gastos[i]
                        Escribir "  Ganancia Neta: ", ganancias_netas[i]
                    FinPara
                Sino
                    Escribir "No hay registros."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de ganancia neta."
            De Otro Modo:
                Escribir "Opci�n inv�lida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
