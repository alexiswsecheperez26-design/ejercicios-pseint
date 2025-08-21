Algoritmo biblioteca
	Definir titulo, autor, numero_de_paginas, acumulador Como Caracter
	
	acumulador <- ""  //inicializar vacio 
	
	Repetir
		escribir "elige una opcion: ";
		Escribir "1 . registrar libro ";
		Escribir "2 . imprimir libros ";
		Escribir "3 . salir del programa ";
		Leer  dato_opcion
		
		Segun dato_opcion Hacer
			1:
               Escribir "introduce el titulo del libro:"
               Leer titulo
			   
			   Escribir "introduce el nombre del autor:"
               Leer autor
			   
               Escribir "introduce el numero de paginas:"
               Leer paginas
			   
			   //guardar en el acumulador
		       acumulador <- acumulador + "titulo: " + titulo + ", autor: " + autor + ", Páginas: " + ConvertirATexto(paginas) + "\n"
		       
		   2:
			   Escribir "libros registrados: ";
			   Escribir acumulador;
			   
		   3:
			   Escribir "saliendo del programa...";
			   
		   De Otro Modo:
			   Escribir "opcion no valida. por favor ingrese una opcion valida (1-3)";
		fin segun
	Hasta Que dato_opcion = 3
FinAlgoritmo
