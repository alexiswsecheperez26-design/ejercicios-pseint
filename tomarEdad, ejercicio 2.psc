//tomardatos
Funcion edad<-tomar_edad
	Definir edad como entero
	Escribir "ingrese su edad: "
	Leer edad
FinFuncion
//procesar datos
Funcion imp<-imprimirS(suEdad)
	definir imp como cadena
	imp<-"Tienes "+ConvertirATexto(suEdad)+" años"
	FinFuncion
	
	Algoritmo tomarEdad
//inicializar datos
	Definir imp como cadena
	Definir edad Como Entero
	edad<-tomar_edad
	imp<-imprimirS(edad)
	//Mostrar resultados
	Escribir imp
FinAlgoritmo
