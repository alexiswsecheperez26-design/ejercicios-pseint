Algoritmo TotalAPagarServicios
	
	Dimension consumos_servicios[100,2] // Array para almacenar [consumo, costo_unitario]
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Pagos de Servicios ---"
		Mostrar "1. Registrar consumo de servicio"
		Mostrar "2. Modificar consumo de servicio"
		Mostrar "3. Mostrar consumos y total a pagar"
		Mostrar "4. Salir"
		Mostrar "-------------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese el consumo del servicio (ej. kWh, m3):"
					Leer consumo
					Mostrar "Ingrese el costo unitario del servicio:"
					Leer costo_unitario
					
					consumos_servicios[num_registros,1] = consumo
					consumos_servicios[num_registros,2] = costo_unitario
					
					num_registros = num_registros + 1
					Mostrar "Consumo de servicio guardado exitosamente."
				SiNo
					Mostrar "La lista de servicios está llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					
					Mostrar "Ingrese el número de servicio a modificar (1 a "  num_registros  "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Servicio actual: Consumo=" + consumos_servicios[indice_modificar-1,0] + ", Costo Unitario=" + consumos_servicios[indice_modificar-1,1]
						Mostrar "Ingrese el nuevo consumo:"
						Leer consumo
						Mostrar "Ingrese el nuevo costo unitario:"
						Leer costo_unitario
						
						consumos_servicios[indice_modificar-1,0] = consumo
						consumos_servicios[indice_modificar-1,1] = costo_unitario
						Mostrar "Servicio modificado exitosamente."
					SiNo
						Mostrar "Número de servicio inválido."
					FinSi
				SiNo
					Mostrar "No hay servicios para modificar."
				FinSi
			3:
				Si num_registros > 0 Entonces
					
					total_a_pagar = 0
					Mostrar "--- Listado de Consumos de Servicios ---"
					Para i = 1 Hasta num_registros-1 Hacer
						costo_servicio = consumos_servicios[i,1] + consumos_servicios[i,1]
						total_a_pagar = total_a_pagar  
						Mostrar "Servicio "  (i+1)  ": Consumo="  consumos_servicios[i,1]  ", Costo Unitario="  consumos_servicios[i,2]  ", Subtotal="  costo_servicio
					FinPara
					Mostrar "----------------------------------------"
					Mostrar "Total General a Pagar por Servicios: "  total_a_pagar
				SiNo
					Mostrar "No hay consumos de servicios almacenados."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
