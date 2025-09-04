//definir funciones
Funcion baseRectangulo <- solicitarBaseRectangulo
    Definir baseRectangulo Como Real
    Escribir "Digite la base del rectángulo en metros:"
    Leer baseRectangulo
FinFuncion

Funcion alturaRectangulo <- solicitarAlturaRectangulo
    Definir alturaRectangulo Como Real
    Escribir "Digite la altura del rectángulo en metros:"
    Leer alturaRectangulo
FinFuncion

Funcion areaRectangulo <- calcularAreaRectangulo(baseRectangulo, alturaRectangulo)
    Definir areaRectangulo Como Real
    areaRectangulo <- baseRectangulo * alturaRectangulo
FinFuncion
Algoritmo area_rectangulo
	Definir baseRectangulo, alturaRectangulo, areaRectangulo Como Real
	//tomar datos
    baseRectangulo <- solicitarBaseRectangulo
    alturaRectangulo <- solicitarAlturaRectangulo
	//procesar datos
	areaRectangulo <- calcularAreaRectangulo(baseRectangulo, alturaRectangulo)
	//Mostrar resultaddos
    Escribir "El área del rectángulo es: ", areaRectangulo
FinAlgoritmo
