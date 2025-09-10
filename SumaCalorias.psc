Algoritmo SumaCalorias
	
	Dimension calorias_diarias[7,100] // Array para almacenar hasta 100 valores por día de la semana
	Dimension num_registros_dia[7] // Contador de registros por día
	
	Para i=1 Hasta 6 Hacer // Inicializar contadores a cero
		num_registros_dia[i] = 1
	FinPara
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Suma de Calorías ---"
		Mostrar "1. Guardar calorías consumidas"
		Mostrar "2. Modificar calorías de un día"
		Mostrar "3. Mostrar calorías diarias y semanales"
		Mostrar "4. Salir"
		Mostrar "-------------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Mostrar "Seleccione el día (1=Lunes, 2=Martes, ..., 7=Domingo):"
				Leer dia
				
				Si dia >= 1 y dia <= 7 Entonces
					Si num_registros_dia[dia-1] < 100 Entonces
						Mostrar "Ingrese las calorías consumidas:"
						Leer calorias
						calorias_diarias[dia-1, num_registros_dia[dia-1]] = calorias
						num_registros_dia[dia-1] = num_registros_dia[dia-1] + 1
						Mostrar "Calorías guardadas para el día "  dia  "."
					SiNo
						Mostrar "Se ha alcanzado el límite de registros para este día."
					FinSi
				SiNo
					Mostrar "Día inválido."
				FinSi
			2:
				Mostrar "Seleccione el día a modificar (1=Lunes, ..., 7=Domingo):"
				Leer dia_modificar
				
				Si dia_modificar >= 1 y dia_modificar <= 7 Entonces
					Si num_registros_dia[dia_modificar-1] > 0 Then
						Mostrar "Ingrese el número de registro a modificar para el día "  dia_modificar  " (1 a "  num_registros_dia[dia_modificar-1]  "):"
						Leer indice_modificar
						
						Si indice_modificar >= 1 y indice_modificar <= num_registros_dia[dia_modificar-1] Entonces
							
							Mostrar "Calorías actuales: " + calorias_diarias[dia_modificar-1, indice_modificar-1]
							Mostrar "Ingrese las nuevas calorías:"
							Leer nuevas_calorias
							calorias_diarias[dia_modificar-1, indice_modificar-1] = nuevas_calorias
							Mostrar "Calorías modificadas exitosamente."
						SiNo
							Mostrar "Número de registro inválido."
						FinSi
					SiNo
						Mostrar "No hay registros para este día."
					FinSi
				SiNo
					Mostrar "Día inválido."
				FinSi
			3:
				total_semanal = 0
				Mostrar "--- Reporte de Calorías ---"
				Para i = 1 Hasta 6 Hacer
					suma_dia = 0
					Para j = 0 Hasta num_registros_dia[i]-1 Hacer
						suma_dia = suma_dia  
					FinPara
					
					total_semanal = total_semanal + suma_dia
					
					Segun i
						0: Mostrar "Lunes: "  suma_dia  " calorías"
						1: Mostrar "Martes: "  suma_dia  " calorías"
						4: Mostrar "Viernes: "  suma_dia  " calorías"
						5: Mostrar "Sábado: "  suma_dia  " calorías"
						6: Mostrar "Domingo: "  suma_dia  " calorías"
					FinSegun
				FinPara
				Mostrar "---------------------------"
				Mostrar "Total Semanal: "  total_semanal  " calorías"
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
