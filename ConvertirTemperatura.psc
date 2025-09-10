Algoritmo ConvertirTemperatura
    Dimension temperaturas_celsius[10] // Max 10 temperaturas
    Dimension temperaturas_fahrenheit[10]
    Definir opcion Como Entero
    Definir i, num_temperaturas_registradas Como Entero
    Definir celsius, fahrenheit Como Real
    
    num_temperaturas_registradas = 1
    
    Repetir
        Escribir "--- Conversión de Temperatura (C a F) ---"
        Escribir "1. Añadir temperatura Celsius"
        Escribir "2. Modificar una temperatura Celsius"
        Escribir "3. Mostrar temperaturas"
        Escribir "4. Salir"
        Escribir "Ingrese su opción: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Añadir temperatura Celsius
                Si num_temperaturas_registradas < 10 Entonces
                    Escribir "Ingrese la temperatura en Celsius ", num_temperaturas_registradas + 1, ": "
                    Leer celsius
                    
                    temperaturas_celsius[num_temperaturas_registradas] = celsius
                    
                    fahrenheit = (celsius * 9 / 5) + 32
                    temperaturas_fahrenheit[num_temperaturas_registradas] = fahrenheit
                    
                    num_temperaturas_registradas = num_temperaturas_registradas + 1
                    Escribir "Temperatura añadida correctamente."
                Sino
                    Escribir "No se pueden añadir más temperaturas. Límite alcanzado."
                FinSi
            2: // Modificar una temperatura Celsius
                Si num_temperaturas_registradas > 0 Entonces
                    Escribir "Ingrese el número de la temperatura a modificar (1-", num_temperaturas_registradas, "): "
                    Leer i
                    Si i >= 1 Y i <= num_temperaturas_registradas Entonces
                        Escribir "Ingrese la nueva temperatura en Celsius para la entrada ", i, ": "
                        Leer celsius
                        
                        temperaturas_celsius[i-1] = celsius
                        
                        fahrenheit = (celsius * 9 / 5) + 32
                        temperaturas_fahrenheit[i-1] = fahrenheit
                        
                        Escribir "Temperatura modificada correctamente."
                    Sino
                        Escribir "Número de temperatura inválido."
                    FinSi
                Sino
                    Escribir "No hay temperaturas registradas para modificar."
                FinSi
            3: // Mostrar temperaturas
                Si num_temperaturas_registradas > 0 Entonces
                    Escribir "Listado de Temperaturas:"
                    Para i = 1 Hasta num_temperaturas_registradas - 1 Hacer
                        Escribir "--- Temperatura ", i + 1, " ---"
                        Escribir "  Celsius: ", temperaturas_celsius[i]
                        Escribir "  Fahrenheit: ", temperaturas_fahrenheit[i]
                    FinPara
                Sino
                    Escribir "No hay temperaturas registradas."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de conversión de temperatura."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo