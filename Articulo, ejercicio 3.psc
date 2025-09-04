//tomar datos
Funcion precio<-ElPrecio
	definir precio como real 
	Escribir "ingrese el precio del articulo"
	Leer precio
FinFuncion
//procesar datos
Funcion imp<-imprimir_Precio(precio)
	Definir imp como cadena
	imp<-"el precio del articulo es: $"+ ConvertirATexto(precio)
FinFuncion
Algoritmo Articulo
	//inicializar datos
	Definir precio Como Real
	Definir imp como cadena
	precio<-ElPrecio
	imp<-imprimir_Precio(precio)
	//mostrar resultados
	Escribir imp
FinAlgoritmo
