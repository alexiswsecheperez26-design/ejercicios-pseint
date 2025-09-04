Algoritmo elPromedio
	
	Definir N1_M1, N2_M1,N3_M1,promedio_M1 como Real;
	Definir N1_M2, N2_M2, N3_M2,promedio_M2 Como Real;
	Definir N1_M3, N2_M3, N3_M3,promedio_M3 Como Real;
	Definir promedio_geral Como Real

	Escribir " Digite nota Nª1, materia Nº1 "; Leer N1_M1 
	Escribir " Digite nota Nª2, materia Nº1 "; Leer N2_M1 
	Escribir " Digite nota Nª3, materia Nº1 "; Leer N3_M1 
	promedio_M1<-(N1_M1+N2_M1+N3_M1)/3

	Escribir " Digite nota Nº1, materia Nº2 "; Leer N1_M2
	Escribir " Digite nota Nº2, materia Nº2 "; Leer N2_M2
	Escribir " Digite nota Nº3, materia Nº2 "; Leer N3_M2
	promedio_M2<-(N1_M2+N2_M2+N3_M2)/3

	Escribir " Digite nota Nº1, materia Nº3 "; Leer N1_M3
	Escribir " Digite nota Nº2, materia Nº3 "; Leer N2_M3
	Escribir " Digite nota Nº3, materia Nº3 "; Leer N3_M3
	promedio_M3<-(N1_M3+N2_M3+N3_M3)/3
	
	promedio_geral<-(promedio_M1+promedio_M2+promedio_M3)/3
	
	Escribir " Promemedio Materia Nº1 ", promedio_M1
	Escribir " promemedio Materia Nº2  ", promedio_M2
	Escribir " Promemedio Materia Nº3 ", promedio_M3
	Escribir " Promemedio general es  ", promedio_geral
FinAlgoritmo


