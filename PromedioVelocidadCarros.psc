Algoritmo PromedioVelocidadCarros
	
	Dimension velocidades[100,3] // Array para almacenar [distancia, tiempo, velocidad]
	num_registros = 1
	
	Repetir
		Mostrar ""
		Mostrar "--- Menú Velocidad Carros ---"
		Mostrar "1. Guardar velocidad de carro"
		Mostrar "2. Modificar velocidad de carro"
		Mostrar "3. Mostrar velocidades"
		Mostrar "4. Salir"
		Mostrar "-----------------------------"
		Leer opcion
		
		Segun opcion
			1:
				Si num_registros < 100 Entonces
					Mostrar "Ingrese la distancia recorrida (km):"
					Leer distancia
					Mostrar "Ingrese el tiempo transcurrido (horas):"
					Leer tiempo
					
					Si tiempo > 0 Entonces
						velocidad = distancia / tiempo
						velocidades[num_registros,1] = distancia
						velocidades[num_registros,2] = tiempo
						velocidades[num_registros,3] = velocidad
						
						num_registros = num_registros + 1
						Mostrar "Velocidad guardada exitosamente."
					SiNo
						Mostrar "El tiempo no puede ser cero."
					FinSi
				SiNo
					Mostrar "La lista de carros está llena."
				FinSi
			2:
				Si num_registros > 0 Entonces
					
					Mostrar "Ingrese el número de carro a modificar (1 a " num_registros "):"
					Leer indice_modificar
					
					Si indice_modificar >= 1 y indice_modificar <= num_registros Entonces
						
						Mostrar "Datos actuales: Distancia="  velocidades[indice_modificar-1,0]  ", Tiempo="  velocidades[indice_modificar-1,1]  ", Velocidad="  velocidades[indice_modificar-1,2]
						Mostrar "Ingrese la nueva distancia (km):"
						Leer distancia
						Mostrar "Ingrese el nuevo tiempo (horas):"
						Leer tiempo
						
						Si tiempo > 0 Entonces
							
							velocidad = distancia / tiempo
							velocidades[indice_modificar-1,0] = distancia
							velocidades[indice_modificar-1,1] = tiempo
							velocidades[indice_modificar-1,2] = velocidad
							Mostrar "Velocidad modificada exitosamente."
						SiNo
							Mostrar "El tiempo no puede ser cero."
						FinSi
					SiNo
						Mostrar "Número de carro inválido."
					FinSi
				SiNo
					Mostrar "No hay carros registrados."
				FinSi
			3:
				Si num_registros > 0 Entonces
					
					Mostrar "--- Listado de Velocidades ---"
					Para i = 1 Hasta num_registros-1 Hacer
						Mostrar "Carro "  (i+1)  ": Distancia="  velocidades[i,1]  " km, Tiempo="  velocidades[i,2]  " h, Velocidad="  velocidades[i,3]  " km/h"
					FinPara
				SiNo
					Mostrar "No hay velocidades almacenadas."
				FinSi
			4:
				Mostrar "Saliendo del programa."
			DeOtroModo:
				Mostrar "Opción inválida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
