Algoritmo calorias_semana
	
	Definir calorias_dia, total_dia, total_semana Como Real
	Definir i, j Como Entero
	// Empezamos el contador de calorías semanales en 0
	total_semana <- 0
	
	// Recorre los 7 días de la semana
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		total_dia <- 0
		Escribir "---- Día ", i, " ----"
		// Pedir las comidas del día (ejemplo: 3 comidas principales)
		Para j <- 1 Hasta 3 Con Paso 1 Hacer
			Escribir " Ingrese calorías de la comida ", j, ":";Leer calorias_dia
			total_dia <- total_dia + calorias_dia
		FinPara
		// Mostramos cuántas calorías comiste en el día i
		Escribir " Total de calorías consumidas en el día ", i, ": ", total_dia
		// Sumamos esas calorías al acumulado de la semana

		total_semana <- total_semana + total_dia
	FinPara
	
	// Separador para la presentación en pantalla
	Escribir "  "
	// Mostrar total semanal
	Escribir " Total de calorías consumidas en la semana: ", total_semana
FinAlgoritmo

