Algoritmo UnidadesVendidas
	
	Dimension ventas_productos[100,3] // Array para almacenar [unidades, precio_unitario, total_producto]
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Ventas de Productos ---"
		Mostrar "1. Registrar venta de producto"
		Mostrar "2. Modificar venta de producto"
		Mostrar "3. Mostrar ventas y total general"
		Mostrar "4. Salir"
		Mostrar "--------------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese las unidades vendidas:"
					Leer unidades
					Mostrar "Ingrese el precio unitario:"
					Leer precio_unitario
					
					ventas_productos[num_registros,1] = unidades
					ventas_productos[num_registros,2] = precio_unitario
					ventas_productos[num_registros,3] = unidades * precio_unitario
					
					num_registros = num_registros + 1
					Mostrar "Venta registrada exitosamente."
				SiNo
					Mostrar "La lista de ventas está llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					
					Mostrar "Ingrese el número de registro a modificar (1 a "  num_registros  "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Venta actual: Unidades="  ventas_productos[indice_modificar-1,0]  ", Precio Unitario="  ventas_productos[indice_modificar-1,1]  ", Total="  ventas_productos[indice_modificar-1,2]
						Mostrar "Ingrese las nuevas unidades vendidas:"
						Leer unidades
						Mostrar "Ingrese el nuevo precio unitario:"
						Leer precio_unitario
						
						ventas_productos[indice_modificar-1,0] = unidades
						ventas_productos[indice_modificar-1,1] = precio_unitario
						ventas_productos[indice_modificar-1,2] = unidades * precio_unitario
						Mostrar "Venta modificada exitosamente."
					SiNo
						Mostrar "Número de registro inválido."
					FinSi
				SiNo
					Mostrar "No hay ventas para modificar."
				FinSi
			3:
				Si num_registros > 0 Entonces
					
					total_general = 0
					Mostrar "--- Listado de Ventas ---"
					Para i = 1 Hasta num_registros-1 Hacer
						total_general = total_general + ventas_productos[i,2]
						Mostrar "Producto "  (i+1)  ": Unidades="  ventas_productos[i,1]  ", Precio Unitario="  ventas_productos[i,2]  ", Total="  ventas_productos[i,3]
					FinPara
					Mostrar "--------------------------"
					Mostrar "Total General a Pagar: "  total_general
				SiNo
					Mostrar "No hay ventas almacenadas."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
