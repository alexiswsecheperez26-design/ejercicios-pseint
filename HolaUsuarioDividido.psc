Proceso HolaUsuarioDividido
	Definir nombre, Saludo Como Cadena
	Saludo = " Hola usuario "
	tomar_nombre(Saludo)
FinProceso
Funcion tomar_nombre(dato_saludo Por Valor)
	Definir nombre Como Cadena
	Escribir "Nombre del usuario: "
	Leer nombre
	Escribir dato_saludo, "", nombre
FinFuncion