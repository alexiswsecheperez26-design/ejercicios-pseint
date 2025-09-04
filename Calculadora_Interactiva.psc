Algoritmo Calculadora_Interactiva
	
    //Definición de Variables en el Algoritmo
	
    Definir opcion_menu, respuesta Como Caracter
    Definir valor_a_convertir, valor_convertido Como Real
	
    //Menú Interactivo
    Repetir
        Escribir ""
        Escribir "Calculadora de Conversiones"
        Escribir ""
        Escribir "1. Convertir kilómetros a millas"
        Escribir "2. Convertir pulgadas a centímetros"
        Escribir "3. Convertir libras a kilogramos"
        Escribir "4. Convertir litros a galones"
        Escribir "5. Salir"
        Escribir ""
        Escribir Sin Saltar "Seleccione una opción: "
        Leer opcion_menu
		
        //Opciones del Menú (Según)
		
        Segun opcion_menu Hacer
			
				//Caso 1: Kilómetros a Millas
				
            '1':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de kilómetros: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 0.621371
                    Escribir valor_a_convertir, " kilómetros son ", valor_convertido, " millas."
					
                    Escribir Sin Saltar "¿Desea realizar otra conversión de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 2: Pulgadas a Centímetros
				
            '2':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de pulgadas: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 2.54
                    Escribir valor_a_convertir, " pulgadas son ", valor_convertido, " centímetros."
					
                    Escribir Sin Saltar "¿Desea realizar otra conversión de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 3: Libras a Kilogramos
				
            '3':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de libras: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 0.453592
                    Escribir valor_a_convertir, " libras son ", valor_convertido, " kilogramos."
					
                    Escribir Sin Saltar "¿Desea realizar otra conversión de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 4: Litros a Galones
				
            '4':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de litros: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 0.264172
                    Escribir valor_a_convertir, " litros son ", valor_convertido, " galones."
					
                    Escribir Sin Saltar "¿Desea realizar otra conversión de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 5: Salir del Programa
				
            '5':
                Escribir ""
                Escribir "Saliendo del programa..."
                Escribir ""
				
				//Opción no válida
				
            De Otro Modo:
                Escribir ""
                Escribir "Opción no válida. Por favor, intente de nuevo."
                Escribir ""
				
        FinSegun
		
    Hasta Que opcion_menu = '5'

	
FinAlgoritmo
