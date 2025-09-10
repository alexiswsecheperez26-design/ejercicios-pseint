Algoritmo SumaCalorias
	
	Dimension calorias_diarias[7,100] // Array para almacenar hasta 100 valores por d�a de la semana
	Dimension num_registros_dia[7] // Contador de registros por d�a
	
	Para i=1 Hasta 6 Hacer // Inicializar contadores a cero
		num_registros_dia[i] = 1
	FinPara
	
	Repetir
		Mostrar ""
		Mostrar "--- Men� Suma de Calor�as ---"
		Mostrar "1. Guardar calor�as consumidas"
		Mostrar "2. Modificar calor�as de un d�a"
		Mostrar "3. Mostrar calor�as diarias y semanales"
		Mostrar "4. Salir"
		Mostrar "-------------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Mostrar "Seleccione el d�a (1=Lunes, 2=Martes, ..., 7=Domingo):"
				Leer dia
				
				Si dia >= 1 y dia <= 7 Entonces
					Si num_registros_dia[dia-1] < 100 Entonces
						Mostrar "Ingrese las calor�as consumidas:"
						Leer calorias
						calorias_diarias[dia-1, num_registros_dia[dia-1]] = calorias
						num_registros_dia[dia-1] = num_registros_dia[dia-1] + 1
						Mostrar "Calor�as guardadas para el d�a "  dia  "."
					SiNo
						Mostrar "Se ha alcanzado el l�mite de registros para este d�a."
					FinSi
				SiNo
					Mostrar "D�a inv�lido."
				FinSi
			2:
				Mostrar "Seleccione el d�a a modificar (1=Lunes, ..., 7=Domingo):"
				Leer dia_modificar
				
				Si dia_modificar >= 1 y dia_modificar <= 7 Entonces
					Si num_registros_dia[dia_modificar-1] > 0 Then
						Mostrar "Ingrese el n�mero de registro a modificar para el d�a "  dia_modificar  " (1 a "  num_registros_dia[dia_modificar-1]  "):"
						Leer indice_modificar
						
						Si indice_modificar >= 1 y indice_modificar <= num_registros_dia[dia_modificar-1] Entonces
							
							Mostrar "Calor�as actuales: " + calorias_diarias[dia_modificar-1, indice_modificar-1]
							Mostrar "Ingrese las nuevas calor�as:"
							Leer nuevas_calorias
							calorias_diarias[dia_modificar-1, indice_modificar-1] = nuevas_calorias
							Mostrar "Calor�as modificadas exitosamente."
						SiNo
							Mostrar "N�mero de registro inv�lido."
						FinSi
					SiNo
						Mostrar "No hay registros para este d�a."
					FinSi
				SiNo
					Mostrar "D�a inv�lido."
				FinSi
			3:
				total_semanal = 0
				Mostrar "--- Reporte de Calor�as ---"
				Para i = 1 Hasta 6 Hacer
					suma_dia = 0
					Para j = 0 Hasta num_registros_dia[i]-1 Hacer
						suma_dia = suma_dia  
					FinPara
					
					total_semanal = total_semanal + suma_dia
					
					Segun i
						0: Mostrar "Lunes: "  suma_dia  " calor�as"
						1: Mostrar "Martes: "  suma_dia  " calor�as"
						4: Mostrar "Viernes: "  suma_dia  " calor�as"
						5: Mostrar "S�bado: "  suma_dia  " calor�as"
						6: Mostrar "Domingo: "  suma_dia  " calor�as"
					FinSegun
				FinPara
				Mostrar "---------------------------"
				Mostrar "Total Semanal: "  total_semanal  " calor�as"
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opci�n inv�lida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
