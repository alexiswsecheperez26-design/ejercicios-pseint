Algoritmo CalculadoraGeometricaInteractiva
    // Definici�n de variables
    Definir opcion_menu_principal Como Caracter
    Definir opcion_sub_menu Como Caracter
    Definir base, altura, radio, longitud, ancho Como Real
    Definir area, volumen Como Real
    Definir continuar_calculando Como Logico
	
    continuar_calculando <- Verdadero
	
    Mientras continuar_calculando Hacer
        // Men� Principal
        Limpiar Pantalla // Para una mejor experiencia de usuario
        Escribir "*******************************************"
        Escribir "*   CALCULADORA GEOM�TRICA INTERACTIVA  *"
        Escribir "*******************************************"
        Escribir "1. Calcular �reas"
        Escribir "2. Calcular Vol�menes"
        Escribir "3. Salir"
        Escribir "*******************************************"
        Escribir "Ingrese su opci�n (1, 2 o 3): "
        Leer opcion_menu_principal
		
        Segun opcion_menu_principal Hacer
            "1": // Men� de �reas
                Repetir
                    Limpiar Pantalla
                    Escribir "-------------------------------------------"
                    Escribir "          CALCULAR �REAS                 "
                    Escribir "-------------------------------------------"
                    Escribir "1. �rea de Tri�ngulo"
                    Escribir "2. �rea de Rect�ngulo"
                    Escribir "3. �rea de C�rculo"
                    Escribir "4. Volver al Men� Principal"
                    Escribir "-------------------------------------------"
                    Escribir "Ingrese su opci�n (1-4): "
                    Leer opcion_sub_menu
					
                    Segun opcion_sub_menu Hacer
                        "1": // �rea de Tri�ngulo
                            Escribir "--- �rea de Tri�ngulo ---"
                            Escribir "Ingrese la base del tri�ngulo: "
                            Leer base
                            Escribir "Ingrese la altura del tri�ngulo: "
                            Leer altura
                            area <- (base * altura) / 2
                            Escribir "El �rea del tri�ngulo es: ", area, " unidades cuadradas."
                        "2": // �rea de Rect�ngulo
                            Escribir "--- �rea de Rect�ngulo ---"
                            Escribir "Ingrese la longitud del rect�ngulo: "
                            Leer longitud
                            Escribir "Ingrese el ancho del rect�ngulo: "
                            Leer ancho
                            area <- longitud * ancho
                            Escribir "El �rea del rect�ngulo es: ", area, " unidades cuadradas."
                        "3": // �rea de C�rculo
                            Escribir "--- �rea de C�rculo ---"
                            Escribir "Ingrese el radio del c�rculo: "
                            Leer radio
                            area <- PI * (radio ^ 2) // Usamos PI como constante predefinida
                            Escribir "El �rea del c�rculo es: ", area, " unidades cuadradas."
                        "4": // Volver al Men� Principal
                            // No se hace nada aqu�, el bucle Repetir-Hasta se encarga de salir
                            Escribir "Volviendo al men� principal..."
                        De Otro Modo:
                            Escribir "Opci�n inv�lida. Por favor, intente de nuevo."
                    FinSegun
                    Esperar Tecla // Pausa para que el usuario vea el resultado/mensaje de error
					Hasta opcion_sub_menu = "4"
				"2": // Men� de Vol�menes
					Repetir
						Limpiar Pantalla
						Escribir "-------------------------------------------"
						Escribir "          CALCULAR VOL�MENES              "
						Escribir "-------------------------------------------"
						Escribir "1. Volumen de Esfera"
						Escribir "2. Volumen de Cilindro"
						Escribir "3. Volumen de Cono"
						Escribir "4. Volver al Men� Principal"
						Escribir "-------------------------------------------"
						Escribir "Ingrese su opci�n (1-4): "
						Leer opcion_sub_menu
						
						Segun opcion_sub_menu Hacer
							"1": // Volumen de Esfera
								Escribir "--- Volumen de Esfera ---"
								Escribir "Ingrese el radio de la esfera: "
								Leer radio
								volumen <- (4/3) * PI * (radio ^ 3)
								Escribir "El volumen de la esfera es: ", volumen, " unidades c�bicas."
							"2": // Volumen de Cilindro
								Escribir "--- Volumen de Cilindro ---"
								Escribir "Ingrese el radio de la base del cilindro: "
								Leer radio
								Escribir "Ingrese la altura del cilindro: "
								Leer altura
								volumen <- PI * (radio ^ 2) * altura
								Escribir "El volumen del cilindro es: ", volumen, " unidades c�bicas."
							"3": // Volumen de Cono
								Escribir "--- Volumen de Cono ---"
								Escribir "Ingrese el radio de la base del cono: "
								Leer radio
								Escribir "Ingrese la altura del cono: "
								Leer altura
								volumen <- (1/3) * PI * (radio ^ 2) * altura
								Escribir "El volumen del cono es: ", volumen, " unidades c�bicas."
							"4": // Volver al Men� Principal
								Escribir "Volviendo al men� principal..."
							De Otro Modo:
								Escribir "Opci�n inv�lida. Por favor, intente de nuevo."
						FinSegun
						Esperar Tecla
						Hasta opcion_sub_menu = "4"
					"3": // Salir
						continuar_calculando <- Falso
						Escribir "Gracias por usar la calculadora geom�trica. �Adi�s!"
					De Otro Modo:
						Escribir "Opci�n inv�lida en el men� principal. Por favor, intente de nuevo."
                Esperar Tecla
        FinSegun
    FinMientras
	
FinAlgoritmo
