Algoritmo resultados_de_examenes
	Definir nota, sumanotas, promedio Como Real;
	definir contadornotas Como Entero;
	Definir respuesta Como Caracter;
	
	sumaNotas <- 0
    contadornotas <- 0
	Repetir
        Escribir "Ingrese el resultado del examen: ";
        Leer nota;
        sumaNotas <- sumaNotas + nota;
        contadorNotas <- contadorNotas + 1;
		
        Escribir "�Desea ingresar otro resultado? (s/n)";
        Leer respuesta;
    Hasta Que respuesta = "n" O respuesta = "N";
	
    Si contadorNotas > 0 Entonces
        promedio <- sumaNotas / contadorNotas
        Escribir "N�mero de notas ingresadas: ", contador
        Escribir "Promedio de notas: ", promedio
		//Mostrar resultados
        Si promedio >= 60 Entonces  
            Escribir "Resultado final: APROBADO"
        Sino
            Escribir "Resultado final: REPROBADO"
        FinSi
    Sino
        Escribir "No se ingres� ninguna nota."
    FinSi
	
FinAlgoritmo
