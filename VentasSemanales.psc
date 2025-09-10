Algoritmo VentasSemanales
    Dimension ventas_diarias[7] // 7 d�as de la semana
    Definir opcion Como Entero
    Definir i Como Entero
    Definir total_semanal Como Real
    Definir dia_semana Como Cadena
    
    // Inicializar el array con ceros
    Para i = 1 Hasta 6 Hacer
        ventas_diarias[i] = 0
    FinPara
    
    Repetir
        Escribir "--- Total de Ventas Semanales ---"
        Escribir "1. Guardar ventas diarias"
        Escribir "2. Modificar venta de un d�a"
        Escribir "3. Mostrar ventas y total semanal"
        Escribir "4. Salir"
        Escribir "Ingrese su opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Guardar ventas diarias
                Escribir "Ingrese las ventas para cada d�a de la semana:"
                Para i = 1 Hasta 6 Hacer
                    Segun i Hacer
                        1: dia_semana = "Lunes"
                        2: dia_semana = "Martes"
                        3: dia_semana = "Mi�rcoles"
                        4: dia_semana = "Jueves"
                        5: dia_semana = "Viernes"
                        6: dia_semana = "S�bado"
                        7: dia_semana = "Domingo"
                    FinSegun
                    Escribir "Ventas para ", dia_semana, ": "
                    Leer ventas_diarias[i]
                FinPara
                Escribir "Ventas diarias guardadas correctamente."
            2: // Modificar venta de un d�a
                Escribir "Ingrese el n�mero del d�a a modificar (1=Lunes, 7=Domingo): "
                Leer i
                Si i >= 1 Y i <= 7 Entonces
                    Segun i-1 Hacer
                        1: dia_semana = "Lunes"
                        2: dia_semana = "Martes"
                        3: dia_semana = "Mi�rcoles"
                        4: dia_semana = "Jueves"
                        5: dia_semana = "Viernes"
                        6: dia_semana = "S�bado"
                        7: dia_semana = "Domingo"
                    FinSegun
                    Escribir "Ingrese el nuevo valor de ventas para el ", dia_semana, ": "
                    Leer ventas_diarias[i-1]
                    Escribir "Venta del d�a modificada correctamente."
                Sino
                    Escribir "D�a inv�lido."
                FinSi
            3: // Mostrar ventas y total semanal
                total_semanal = 0
                Escribir "Ventas Diarias:"
                Para i = 1 Hasta 6 Hacer
                    Segun i Hacer
                        1: dia_semana = "Lunes"
                        2: dia_semana = "Martes"
                        3: dia_semana = "Mi�rcoles"
                        4: dia_semana = "Jueves"
                        5: dia_semana = "Viernes"
                        6: dia_semana = "S�bado"
                        7: dia_semana = "Domingo"
                    FinSegun
                    Escribir dia_semana, ": ", ventas_diarias[i]
                    total_semanal = total_semanal + ventas_diarias[i]
                FinPara
                Escribir "----------------------"
                Escribir "Total Semanal: ", total_semanal
            4: // Salir
                Escribir "Saliendo del programa de ventas semanales."
            De Otro Modo:
                Escribir "Opci�n inv�lida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
