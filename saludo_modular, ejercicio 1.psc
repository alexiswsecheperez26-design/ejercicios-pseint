//tomar nombre
Funcion nom <- leerNombre
	Definir nom Como Cadena
	Escribir "Ingrese su nombre: "
	Leer nom
FinFuncion
//tomar apellido
Funcion ape <- leerApellido
	Definir ape Como Cadena
	Escribir "Ingrese su apellido: "
	Leer ape
FinFuncion
//saludo
Funcion saludos <- saludar(nom, ape)
	Definir saludos Como Cadena
	saludos <- "Buenos días, " + nom + " " + ape
FinFuncion
//Proceso 
Algoritmo saludo_modular
	Definir nombre, apellido, saludo Como Cadena
	
	nombre <- leerNombre
	apellido <- leerApellido
	saludo <- saludar(nombre, apellido)
	
	Escribir saludo
FinAlgoritmo