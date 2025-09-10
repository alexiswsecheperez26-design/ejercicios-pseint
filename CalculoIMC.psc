Algoritmo CalculoIMC
	
	Dimension imc_personas[100,3] // Array para almacenar [peso, altura, imc]
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Cálculo de IMC ---"
		Mostrar "1. Guardar IMC de persona"
		Mostrar "2. Modificar IMC de persona"
		Mostrar "3. Mostrar todos los IMCs"
		Mostrar "4. Salir"
		Mostrar "----------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese el peso en kg:"
					Leer peso
					Mostrar "Ingrese la altura en metros:"
					Leer altura
					
					Si altura > 0 Entonces
						imc = peso / (altura * altura)
						imc_personas[num_registros,1] = peso
						imc_personas[num_registros,2] = altura
						imc_personas[num_registros,3] = imc
						
						num_registros = num_registros + 1
						Mostrar "IMC guardado exitosamente."
					SiNo
						Mostrar "La altura no puede ser cero."
					FinSi
				SiNo
					Mostrar "La lista de personas está llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					Mostrar "Ingrese el número de persona a modificar (1 a "  num_registros  "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Datos actuales: Peso="  imc_personas[indice_modificar-1,0]  ", Altura="  imc_personas[indice_modificar-1,1]  ", IMC="  imc_personas[indice_modificar-1,2]
						Mostrar "Ingrese el nuevo peso en kg:"
						Leer peso
						Mostrar "Ingrese la nueva altura en metros:"
						Leer altura
						
						Si altura > 0 Entonces
							imc = peso / (altura * altura)
							imc_personas[indice_modificar-1,0] = peso
							imc_personas[indice_modificar-1,1] = altura
							imc_personas[indice_modificar-1,2] = imc
							Mostrar "IMC modificado exitosamente."
						SiNo
							Mostrar "La altura no puede ser cero."
						FinSi
					SiNo
						Mostrar "Número de persona inválido."
					FinSi
				SiNo
					Mostrar "No hay personas registradas."
				FinSi
			3:
				Si num_registros > 0 Entonces
					Mostrar "--- Listado de IMCs ---"
					Para i = 1 Hasta num_registros-1 Hacer
						Mostrar "Persona "  (i+1)  ": Peso="  imc_personas[i,1]  ", Altura="  imc_personas[i,2]  ", IMC="  imc_personas[i,3]
					FinPara
				SiNo
					Mostrar "No hay IMCs almacenados."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
