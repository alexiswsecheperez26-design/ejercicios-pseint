Algoritmo Monitoreo_Sensores

    //Definición de Variables en el Algoritmo
	
    Definir total_sensores, temperaturas_bajas, temperaturas_altas, temperaturas_normales como Entero
    Definir suma_temperaturas, temperatura_actual como Real
    Definir opcion_menu como Caracter
	
    //Inicialización de Variables en el Algoritmo
	
    total_sensores = 0
    suma_temperaturas = 0
    temperaturas_bajas = 0
    temperaturas_altas = 0
    temperaturas_normales = 0
	
    //Menú Interactivo                      
 
	
    Repetir
        Escribir ""
        Escribir "Menú de Monitoreo de Sensores Térmicos"
        Escribir ""
        Escribir "1. Iniciar monitoreo de sensores"
        Escribir "2. Mostrar resumen de sensores"
        Escribir "3. Reiniciar lecturas"
        Escribir "4. Salir"
        Escribir ""
        Escribir Sin Saltar "Seleccione una opción: "
        Leer opcion_menu
		
        //Opciones del Menú (Según)
		
        Segun opcion_menu Hacer
			
				//Caso 1: Iniciar Monitoreo de Sensores
				
            '1':
                Escribir Sin Saltar "¿Cuántos sensores desea monitorear? "
                Leer total_sensores
				
                //Bucle para leer la temperatura de cada sensor
				
                Para i <- 1 Hasta total_sensores Hacer
                    Repetir
                        Escribir Sin Saltar "Ingrese la temperatura del sensor ", i, " (0-100 °C): "
                        Leer temperatura_actual
						
                        //Validación del rango de temperatura
						
                        Si temperatura_actual < 0 O temperatura_actual > 100 Entonces
                            Escribir "Temperatura fuera de rango. Por favor, ingrese un valor entre 0 y 100."
                        FinSi
                    Hasta Que temperatura_actual >= 0 Y temperatura_actual <= 100
					
                    //Suma de temperaturas y conteo de rangos
					
                    suma_temperaturas = suma_temperaturas + temperatura_actual
					
                    Si temperatura_actual < 20 Entonces
                        temperaturas_bajas = temperaturas_bajas + 1
                    SiNo
                        Si temperatura_actual > 80 Entonces
                            temperaturas_altas = temperaturas_altas + 1
                        SiNo
                            temperaturas_normales = temperaturas_normales + 1
                        FinSi
                    FinSi
                FinPara
				
                Escribir ""
                Escribir "Todas las temperaturas han sido registradas."
                Escribir ""
				
				//Caso 2: Mostrar Resumen de Sensores
				
            '2':
                Si total_sensores > 0 Entonces
                    Definir total_fahrenheit como Real
                    total_fahrenheit = (suma_temperaturas * 9/5) + 32
					
                    Escribir ""
                    Escribir "Resumen del Monitoreo"
                    Escribir ""
                    Escribir "Suma total de temperaturas: ", suma_temperaturas, " °C"
                    Escribir "Suma total en Fahrenheit: ", total_fahrenheit, " °F"
                    Escribir "Sensores con temperaturas bajas (<20°C): ", temperaturas_bajas
                    Escribir "Sensores con temperaturas altas (>80°C): ", temperaturas_altas
                    Escribir "Sensores con temperaturas normales: ", temperaturas_normales
                    Escribir ""
                SiNo
                    Escribir ""
                    Escribir "No hay datos para mostrar. Inicie el monitoreo primero."
                    Escribir ""
                FinSi
				
				//Caso 3: Reiniciar Lecturas
            '3':
                total_sensores = 0
                suma_temperaturas = 0
                temperaturas_bajas = 0
                temperaturas_altas = 0
                temperaturas_normales = 0
                Escribir ""
                Escribir "Las lecturas han sido reiniciadas."
                Escribir ""
				
				//Caso 4: Salir del Programa
            '4':
                Escribir ""
                Escribir "Saliendo del programa..."
                Escribir ""
				
				//Opción no válida
				
            De Otro Modo:
                Escribir ""
                Escribir "Opción no válida. Por favor, intente de nuevo."
                Escribir ""
				
        FinSegun
		
    Hasta Que opcion_menu = '4'

	
FinAlgoritmo
