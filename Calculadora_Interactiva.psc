Algoritmo Calculadora_Interactiva
	
    //Definici�n de Variables en el Algoritmo
	
    Definir opcion_menu, respuesta Como Caracter
    Definir valor_a_convertir, valor_convertido Como Real
	
    //Men� Interactivo
    Repetir
        Escribir ""
        Escribir "Calculadora de Conversiones"
        Escribir ""
        Escribir "1. Convertir kil�metros a millas"
        Escribir "2. Convertir pulgadas a cent�metros"
        Escribir "3. Convertir libras a kilogramos"
        Escribir "4. Convertir litros a galones"
        Escribir "5. Salir"
        Escribir ""
        Escribir Sin Saltar "Seleccione una opci�n: "
        Leer opcion_menu
		
        //Opciones del Men� (Seg�n)
		
        Segun opcion_menu Hacer
			
				//Caso 1: Kil�metros a Millas
				
            '1':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de kil�metros: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 0.621371
                    Escribir valor_a_convertir, " kil�metros son ", valor_convertido, " millas."
					
                    Escribir Sin Saltar "�Desea realizar otra conversi�n de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 2: Pulgadas a Cent�metros
				
            '2':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de pulgadas: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 2.54
                    Escribir valor_a_convertir, " pulgadas son ", valor_convertido, " cent�metros."
					
                    Escribir Sin Saltar "�Desea realizar otra conversi�n de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 3: Libras a Kilogramos
				
            '3':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de libras: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 0.453592
                    Escribir valor_a_convertir, " libras son ", valor_convertido, " kilogramos."
					
                    Escribir Sin Saltar "�Desea realizar otra conversi�n de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 4: Litros a Galones
				
            '4':
                Repetir
                    Escribir Sin Saltar "Ingrese la cantidad de litros: "
                    Leer valor_a_convertir
                    valor_convertido = valor_a_convertir * 0.264172
                    Escribir valor_a_convertir, " litros son ", valor_convertido, " galones."
					
                    Escribir Sin Saltar "�Desea realizar otra conversi�n de este tipo? (s/n): "
                    Leer respuesta
                Hasta Que respuesta = "n"
				
				//Caso 5: Salir del Programa
				
            '5':
                Escribir ""
                Escribir "Saliendo del programa..."
                Escribir ""
				
				//Opci�n no v�lida
				
            De Otro Modo:
                Escribir ""
                Escribir "Opci�n no v�lida. Por favor, intente de nuevo."
                Escribir ""
				
        FinSegun
		
    Hasta Que opcion_menu = '5'

	
FinAlgoritmo
