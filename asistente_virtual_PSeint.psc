Algoritmo asistente_virtual
	// Definir la variable "edad"
	Definir edad como entero;
	
	// Solicitar la edad al usuario
	Escribir "Por favor, ingresa tu edad:";
	Leer edad;
	
	// Evaluar la edad para recomendar la pel�cula
	Si (edad < 7) Entonces
		Escribir "Te recomendamos pel�culas animadas y educativas.";
		Sino 
			si (edad >= 7 Y edad <= 17) Entonces
			Escribir "Te sugerimos pel�culas adecuadas para la familia, como animaciones, aventuras y comedias familiares.";
			Sino
				Si (edad >= 18 Y edad <= 30) Entonces
					Escribir "Te ofrecemos una variedad de g�neros, como acci�n, drama, comedia y ciencia ficci�n.";
					Sino 
						Si (edad > 30) Entonces
						Escribir "Te recomendamos pel�culas cl�sicas y dramas que pueden ser de tu inter�s.";
					Sino
					Escribir "Edad no v�lida.";
				Fin Si
			fin si
		fin si
		Escribir lista_de_expresiones
	fin si
	
FinAlgoritmo
