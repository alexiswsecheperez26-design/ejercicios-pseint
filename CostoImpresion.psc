Algoritmo CostoImpresion
	
	Dimension impresiones[100,3] // Array para almacenar [paginas, precio_por_pagina, costo_total]
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Men� Costo de Impresi�n ---"
		Mostrar "1. Registrar impresi�n"
		Mostrar "2. Modificar impresi�n"
		Mostrar "3. Mostrar impresiones y costo total"
		Mostrar "4. Salir"
		Mostrar "-------------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese el n�mero de p�ginas a imprimir:"
					Leer paginas
					Mostrar "Ingrese el precio por p�gina:"
					Leer precio_por_pagina
					
					impresiones[num_registros,1] = paginas
					impresiones[num_registros,2] = precio_por_pagina
					impresiones[num_registros,3] = paginas * precio_por_pagina
					
					num_registros = num_registros + 1
					Mostrar "Impresi�n registrada exitosamente."
				SiNo
					Mostrar "La lista de impresiones est� llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					
					Mostrar "Ingrese el n�mero de impresi�n a modificar (1 a "  num_registros  "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Impresi�n actual: P�ginas="  impresiones[indice_modificar-1,0]  ", Precio por P�gina="  impresiones[indice_modificar-1,1]  ", Costo="  impresiones[indice_modificar-1,2]
						Mostrar "Ingrese el nuevo n�mero de p�ginas:"
						Leer paginas
						Mostrar "Ingrese el nuevo precio por p�gina:"
						Leer precio_por_pagina
						
						impresiones[indice_modificar-1,0] = paginas
						impresiones[indice_modificar-1,1] = precio_por_pagina
						impresiones[indice_modificar-1,2] = paginas * precio_por_pagina
						Mostrar "Impresi�n modificada exitosamente."
					SiNo
						Mostrar "N�mero de impresi�n inv�lido."
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
						Mostrar "Impresi�n "  (i+1)  ": P�ginas="  impresiones[i,1]  ", Precio por P�gina="  impresiones[i,2]  ", Costo="  impresiones[i,3]
					FinPara
					Mostrar "------------------------------"
					Mostrar "Costo Total de Impresiones: "  costo_total_impresiones
				SiNo
					Mostrar "No hay impresiones almacenadas."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opci�n inv�lida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
