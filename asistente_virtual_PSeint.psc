Algoritmo asistente_virtual
	// Definir la variable "edad"
	Definir edad como entero;
	
	// Solicitar la edad al usuario
	Escribir "Por favor, ingresa tu edad:";
	Leer edad;
	
	// Evaluar la edad para recomendar la película
	Si (edad < 7) Entonces
		Escribir "Te recomendamos películas animadas y educativas.";
		Sino 
			si (edad >= 7 Y edad <= 17) Entonces
			Escribir "Te sugerimos películas adecuadas para la familia, como animaciones, aventuras y comedias familiares.";
			Sino
				Si (edad >= 18 Y edad <= 30) Entonces
					Escribir "Te ofrecemos una variedad de géneros, como acción, drama, comedia y ciencia ficción.";
					Sino 
						Si (edad > 30) Entonces
						Escribir "Te recomendamos películas clásicas y dramas que pueden ser de tu interés.";
					Sino
					Escribir "Edad no válida.";
				Fin Si
			fin si
		fin si
		Escribir lista_de_expresiones
	fin si
	
FinAlgoritmo
