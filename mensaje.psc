//1 . crear funciones segun el objetivo individual 
SubAlgoritmo dato_nombre <- tomar_nombre 
	Escribir " digite el nombre del cliente ";
	Leer dato_nombre
FinSubAlgoritmo

SubAlgoritmo dato_apellido <- tomar_apellido
	Escribir "escribir el apellido ";
	Leer dato_apellido
FinSubAlgoritmo

SubAlgoritmo dato_mensaje <- hacer_mensaje(dato_nombre , dato_apellido)
	dato_mensaje <- "bienvenido usuario: " + dato_nombre + " " + dato_apellido
FinSubAlgoritmo

SubAlgoritmo imprimir_mensaje(dato_mensaje)
	Escribir dato_mensaje
FinSubAlgoritmo
// ******** codigo principal ********
Algoritmo mensaje
	//2. Definir variables que van almacenar datos 
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir dato_mensaje Como Caracter;
	//3. llamadod e funciones a usar 
	//3.1 captura datos
	nombre <- tomar_nombre()
	apellido <- tomar_apellido()
	//3.2 procesar datos 
	dato_mensaje <- hacer_mensaje(nombre , apellido);
	//3.3 imprime resultados
	imprimir_mensaje(dato_mensaje)
FinAlgoritmo
