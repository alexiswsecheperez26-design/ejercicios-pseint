Funcion nombreCliente <- pedirNombre
	Definir nombreCliente Como Caracter
	Escribir "escriba el nombre Cliente: ";
	Leer nombreCliente;
FinFuncion
	
Funcion apellidoCliente <- pedirApellido
	Definir apellidoCliente Como Caracter
	Escribir "escriba el apellido Cliente: ";
	leer apellidoCliente;
	
FinFuncion

Funcion verSaludo(DatoNombre_Cliente, DatoApellido_Cliente)
	Definir textoCliente Como Caracter;
	textoCliente= DatoNombre_Cliente + " " + DatoApellido_Cliente;
	Escribir "saludo Cliente: " + textoCliente;
FinFuncion

Algoritmo RegistroCliente
	//llamos la funcion para ejecutar funcion 
	//hagp almacenamiento para recibir el retorno
	DatoNombre<-pedirNombre();
	DatoApellido<-pedirApellido();
	//lamo la funcion para enviar argumentos
	verSaludo( DatoNombre, DatoApellido);
FinAlgoritmo





	