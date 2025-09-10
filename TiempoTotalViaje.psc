Algoritmo TiempoTotalViaje
	
	Dimension tiempos_parciales[100] // Array para almacenar tiempos en minutos
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Tiempo de Viaje ---"
		Mostrar "1. Guardar tiempo parcial"
		Mostrar "2. Modificar tiempo parcial"
		Mostrar "3. Mostrar tiempos y total"
		Mostrar "4. Salir"
		Mostrar "----------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese el tiempo parcial en minutos:"
					Leer tiempo_minutos
					
					tiempos_parciales[num_registros] = tiempo_minutos
					num_registros = num_registros + 1
					Mostrar "Tiempo parcial guardado exitosamente."
				SiNo
					Mostrar "La lista de tiempos está llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					
					Mostrar "Ingrese el número de tiempo a modificar (1 a "  num_registros  "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Tiempo actual: " + tiempos_parciales[indice_modificar-1] + " minutos"
						Mostrar "Ingrese el nuevo tiempo en minutos:"
						Leer nuevo_tiempo
						
						tiempos_parciales[indice_modificar-1] = nuevo_tiempo
						Mostrar "Tiempo modificado exitosamente."
					SiNo
						Mostrar "Número de tiempo inválido."
					FinSi
				SiNo
					Mostrar "No hay tiempos para modificar."
				FinSi
			3:
				Si num_registros > 0 Entonces
					
					total_minutos = 1
					Mostrar "--- Listado de Tiempos Parciales ---"
					Para i = 1 Hasta num_registros-1 Hacer
						total_minutos = total_minutos  
						Mostrar "Tramo "  (i+1)  ": " + tiempos_parciales[i] + " minutos"
					FinPara
					
					horas = trunc(total_minutos / 60)
					minutos_restantes = total_minutos % 60
					
					Mostrar "------------------------------------"
					Mostrar "Tiempo Total de Viaje: "  horas  " horas y "  minutos_restantes  " minutos."
				SiNo
					Mostrar "No hay tiempos almacenados."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
