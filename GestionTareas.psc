Algoritmo GestionTareas
	Definir descripcion, fecha, respuesta Como Caracter;
	Definir listatareas Como Caracter;
	
	listaTareas <- ""; // Se inicializa el acumulador de texto
	
	Repetir
		Escribir "ingrese la descripcion de la tarea:";
		Leer descripcion;
		Escribir "ingrese la fecha de vencimiento (dd/mm/aaaa):";
		Leer fecha;
		
		listaTareas <- Concatenar(listaTareas, "- descripcion: ");
		listaTareas <- Concatenar(listaTareas, descripcion);
		listaTareas <- Concatenar(listaTareas, " (vence: ");
		listaTareas <- Concatenar(listaTareas, fecha);
		listaTareas <- Concatenar(listaTareas, ") \n");
		
		Escribir "¿desea agregar otra tarea? (s/n)";
		Leer respuesta;
	Hasta Que respuesta = "n" O respuesta = "N";
	
	Escribir "";
	Escribir "LISTA DE TAREAS:";
	Escribir "";
	Escribir listaTareas;
FinAlgoritmo
