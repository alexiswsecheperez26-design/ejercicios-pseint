Algoritmo alexis_wsecche_sin_por_referencia
	// 1. Definir tipo de variables
	Definir nombre_alexis Como Caracter;
	Definir apellido_wseche Como Caracter;
	Definir saludo_completo Como Caracter;
	
	// 2. Tomar datos llamando a funciones que devuelven los valores
	nombre_alexis <- ObtenerNombre();
	apellido_wseche <- ObtenerApellido();
	
	// 3. Procesar datos llamando a una función
	saludo_completo <- GenerarSaludo(nombre_alexis, apellido_wseche);
	
	// 4. Mostrar resultados llamando a un subproceso
	MostrarSaludo(saludo_completo);
FinAlgoritmo

// Función para obtener el nombre del usuario
Funcion nombre_ingresado <- ObtenerNombre()
	Definir nombre_ingresado Como Caracter;
	Escribir "Digite nombre:";
	Leer nombre_ingresado;
	// La función devuelve el valor de nombre_ingresado
FinFuncion

// Función para obtener el apellido del usuario
Funcion apellido_ingresado <- ObtenerApellido()
	Definir apellido_ingresado Como Caracter;
	Escribir "Digite apellido:";
	Leer apellido_ingresado;
	// La función devuelve el valor de apellido_ingresado
FinFuncion

// Función para generar el saludo completo (sin cambios, ya que no usaba Por Referencia)
Funcion resultado_saludo <- GenerarSaludo( nombre_p, apellido_p )
	
	Definir resultado_saludo Como Caracter;
	resultado_saludo <- "Bienvenido... " + nombre_p + " " + apellido_p;
FinFuncion

// Subproceso para mostrar el saludo en pantalla (sin cambios, ya que no usaba Por Referencia)
SubProceso MostrarSaludo( saludo_a_mostrar )
	
	Escribir saludo_a_mostrar;
FinSubProceso
