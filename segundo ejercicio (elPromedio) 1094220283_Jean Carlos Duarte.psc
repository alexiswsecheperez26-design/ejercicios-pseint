Algoritmo elPromedio
	// Materia N�1, definir codigo (N#=nota,M#=materia)
	Definir N1_M1, N2_M1,N3_M1,promedio_M1 como Real;
	Definir N1_M2, N2_M2, N3_M2,promedio_M2 Como Real;
	Definir N1_M3, N2_M3, N3_M3,promedio_M3 Como Real;
	Definir promedio_geral Como Real
	//tomar datos o asignar variables (notas de la materia N�1)
	Escribir "Digite nota N�1, materia N�1"; Leer N1_M1 
	Escribir "Digite nota N�2, materia N�1"; Leer N2_M1 
	Escribir "Digite nota N�3, materia N�1"; Leer N3_M1 
	promedio_M1<-(N1_M1+N2_M1+N3_M1)/3
	//tomar datos o asignar variables (notas de la materia N�2)
	Escribir "Digite nota N�1, materia N�2"; Leer N1_M2
	Escribir "Digite nota N�2, materia N�2"; Leer N2_M2
	Escribir "Digite nota N�3, materia N�2"; Leer N3_M2
	promedio_M2<-(N1_M2+N2_M2+N3_M2)/3
	//tomar datos o asignar variables (notas de la materia N�3)
	Escribir "Digite nota N�1, materia N�3"; Leer N1_M3
	Escribir "Digite nota N�2, materia N�3"; Leer N2_M3
	Escribir "Digite nota N�3, materia N�3"; Leer N3_M3
	promedio_M3<-(N1_M3+N2_M3+N3_M3)/3
	//procesar datos (promedio general)
	promedio_geral<-(promedio_M1+promedio_M2+promedio_M3)/3
	//mostrar resultados
	Escribir "Promemedio Materia N�1 ", promedio_M1
	Escribir "Promemedio Materia N�2  ", promedio_M2
	Escribir "Promemedio Materia N�3 ", promedio_M3
	Escribir "Promemedio general es  ", promedio_geral
FinAlgoritmo
