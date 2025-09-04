Algoritmo CalculadoraGeometricaInteractiva
    // Definición de variables
    Definir opcion_menu_principal Como Caracter
    Definir opcion_sub_menu Como Caracter
    Definir base, altura, radio, longitud, ancho Como Real
    Definir area, volumen Como Real
    Definir continuar_calculando Como Logico
	
    continuar_calculando <- Verdadero
	
    Mientras continuar_calculando Hacer
        // Menú Principal
        Limpiar Pantalla // Para una mejor experiencia de usuario
        Escribir "*******************************************"
        Escribir "*   CALCULADORA GEOMÉTRICA INTERACTIVA  *"
        Escribir "*******************************************"
        Escribir "1. Calcular Áreas"
        Escribir "2. Calcular Volúmenes"
        Escribir "3. Salir"
        Escribir "*******************************************"
        Escribir "Ingrese su opción (1, 2 o 3): "
        Leer opcion_menu_principal
		
        Segun opcion_menu_principal Hacer
            "1": // Menú de Áreas
                Repetir
                    Limpiar Pantalla
                    Escribir "-------------------------------------------"
                    Escribir "          CALCULAR ÁREAS                 "
                    Escribir "-------------------------------------------"
                    Escribir "1. Área de Triángulo"
                    Escribir "2. Área de Rectángulo"
                    Escribir "3. Área de Círculo"
                    Escribir "4. Volver al Menú Principal"
                    Escribir "-------------------------------------------"
                    Escribir "Ingrese su opción (1-4): "
                    Leer opcion_sub_menu
					
                    Segun opcion_sub_menu Hacer
                        "1": // Área de Triángulo
                            Escribir "--- Área de Triángulo ---"
                            Escribir "Ingrese la base del triángulo: "
                            Leer base
                            Escribir "Ingrese la altura del triángulo: "
                            Leer altura
                            area <- (base * altura) / 2
                            Escribir "El área del triángulo es: ", area, " unidades cuadradas."
                        "2": // Área de Rectángulo
                            Escribir "--- Área de Rectángulo ---"
                            Escribir "Ingrese la longitud del rectángulo: "
                            Leer longitud
                            Escribir "Ingrese el ancho del rectángulo: "
                            Leer ancho
                            area <- longitud * ancho
                            Escribir "El área del rectángulo es: ", area, " unidades cuadradas."
                        "3": // Área de Círculo
                            Escribir "--- Área de Círculo ---"
                            Escribir "Ingrese el radio del círculo: "
                            Leer radio
                            area <- PI * (radio ^ 2) // Usamos PI como constante predefinida
                            Escribir "El área del círculo es: ", area, " unidades cuadradas."
                        "4": // Volver al Menú Principal
                            // No se hace nada aquí, el bucle Repetir-Hasta se encarga de salir
                            Escribir "Volviendo al menú principal..."
                        De Otro Modo:
                            Escribir "Opción inválida. Por favor, intente de nuevo."
                    FinSegun
                    Esperar Tecla // Pausa para que el usuario vea el resultado/mensaje de error
					Hasta opcion_sub_menu = "4"
				"2": // Menú de Volúmenes
					Repetir
						Limpiar Pantalla
						Escribir "-------------------------------------------"
						Escribir "          CALCULAR VOLÚMENES              "
						Escribir "-------------------------------------------"
						Escribir "1. Volumen de Esfera"
						Escribir "2. Volumen de Cilindro"
						Escribir "3. Volumen de Cono"
						Escribir "4. Volver al Menú Principal"
						Escribir "-------------------------------------------"
						Escribir "Ingrese su opción (1-4): "
						Leer opcion_sub_menu
						
						Segun opcion_sub_menu Hacer
							"1": // Volumen de Esfera
								Escribir "--- Volumen de Esfera ---"
								Escribir "Ingrese el radio de la esfera: "
								Leer radio
								volumen <- (4/3) * PI * (radio ^ 3)
								Escribir "El volumen de la esfera es: ", volumen, " unidades cúbicas."
							"2": // Volumen de Cilindro
								Escribir "--- Volumen de Cilindro ---"
								Escribir "Ingrese el radio de la base del cilindro: "
								Leer radio
								Escribir "Ingrese la altura del cilindro: "
								Leer altura
								volumen <- PI * (radio ^ 2) * altura
								Escribir "El volumen del cilindro es: ", volumen, " unidades cúbicas."
							"3": // Volumen de Cono
								Escribir "--- Volumen de Cono ---"
								Escribir "Ingrese el radio de la base del cono: "
								Leer radio
								Escribir "Ingrese la altura del cono: "
								Leer altura
								volumen <- (1/3) * PI * (radio ^ 2) * altura
								Escribir "El volumen del cono es: ", volumen, " unidades cúbicas."
							"4": // Volver al Menú Principal
								Escribir "Volviendo al menú principal..."
							De Otro Modo:
								Escribir "Opción inválida. Por favor, intente de nuevo."
						FinSegun
						Esperar Tecla
						Hasta opcion_sub_menu = "4"
					"3": // Salir
						continuar_calculando <- Falso
						Escribir "Gracias por usar la calculadora geométrica. ¡Adiós!"
					De Otro Modo:
						Escribir "Opción inválida en el menú principal. Por favor, intente de nuevo."
                Esperar Tecla
        FinSegun
    FinMientras
	
FinAlgoritmo
