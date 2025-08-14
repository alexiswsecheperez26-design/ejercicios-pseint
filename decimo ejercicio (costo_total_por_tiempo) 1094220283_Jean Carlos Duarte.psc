Algoritmo scosto_total_por_tiempo
	// Definir variables
	Definir horas_trabajadas, tarifa_hora, costo_total Como Real;
	
	// Solicitar datos al usuario
	Escribir "Digite la cantidad de horas trabajadas:";Leer horas_trabajadas
	Escribir "Digite la tarifa por hora:";Leer tarifa_hora
	// Calcular costo total
	costo_total <- horas_trabajadas * tarifa_hora
	// Mostrar resultado
	Escribir "El costo total por ", horas_trabajadas, " horas es: $", costo_total
FinAlgoritmo
