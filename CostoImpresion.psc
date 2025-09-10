Algoritmo CostoImpresion
	
	Dimension impresiones[100,3] // Array para almacenar [paginas, precio_por_pagina, costo_total]
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Costo de Impresión ---"
		Mostrar "1. Registrar impresión"
		Mostrar "2. Modificar impresión"
		Mostrar "3. Mostrar impresiones y costo total"
		Mostrar "4. Salir"
		Mostrar "-------------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese el número de páginas a imprimir:"
					Leer paginas
					Mostrar "Ingrese el precio por página:"
					Leer precio_por_pagina
					
					impresiones[num_registros,1] = paginas
					impresiones[num_registros,2] = precio_por_pagina
					impresiones[num_registros,3] = paginas * precio_por_pagina
					
					num_registros = num_registros + 1
					Mostrar "Impresión registrada exitosamente."
				SiNo
					Mostrar "La lista de impresiones está llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					
					Mostrar "Ingrese el número de impresión a modificar (1 a "  num_registros  "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Impresión actual: Páginas="  impresiones[indice_modificar-1,0]  ", Precio por Página="  impresiones[indice_modificar-1,1]  ", Costo="  impresiones[indice_modificar-1,2]
						Mostrar "Ingrese el nuevo número de páginas:"
						Leer paginas
						Mostrar "Ingrese el nuevo precio por página:"
						Leer precio_por_pagina
						
						impresiones[indice_modificar-1,0] = paginas
						impresiones[indice_modificar-1,1] = precio_por_pagina
						impresiones[indice_modificar-1,2] = paginas * precio_por_pagina
						Mostrar "Impresión modificada exitosamente."
					SiNo
						Mostrar "Número de impresión inválido."
					FinSi
				SiNo
					Mostrar "No hay impresiones para modificar."
				FinSi
			3:
				Si num_registros > 0 Entonces
					
					costo_total_impresiones = 0
					Mostrar "--- Listado de Impresiones ---"
					Para i = 1 Hasta num_registros-1 Hacer
						costo_total_impresiones = costo_total_impresiones + impresiones[i,2]
						Mostrar "Impresión "  (i+1)  ": Páginas="  impresiones[i,1]  ", Precio por Página="  impresiones[i,2]  ", Costo="  impresiones[i,3]
					FinPara
					Mostrar "------------------------------"
					Mostrar "Costo Total de Impresiones: "  costo_total_impresiones
				SiNo
					Mostrar "No hay impresiones almacenadas."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
