Funcion notas_M1<-materia1
	Definir N1_M1, N2_M1,N3_M1,promedio_M1, notas_M1 como Real;
	Escribir "Digite nota N�1, materia N�1";
	Leer N1_M1 
	Escribir "Digite nota N�2, materia N�1"; 
	Leer N2_M1 
	Escribir "Digite nota N�3, materia N�1"; 
	Leer N3_M1 
	promedio_M1<-(N1_M1+N2_M1+N3_M1)/3
	notas_M1<-promedio_M1
FinFuncion
Funcion notas_M2<-materia2
	Definir N1_M2, N2_M2, N3_M2,promedio_M2, notas_M2 Como Real;
	Escribir "Digite nota N�1, materia N�2"; 
	Leer N1_M2
	Escribir "Digite nota N�2, materia N�2"; 
	Leer N2_M2
	Escribir "Digite nota N�3, materia N�2"; 
	Leer N3_M2
	promedio_M2<-(N1_M2+N2_M2+N3_M2)/3
	notas_M2<-promedio_M2
FinFuncion
Funcion notas_M3<-materia3
	Definir N1_M3, N2_M3, N3_M3,promedio_M3, notas_ Como Real;
	Escribir "Digite nota N�1, materia N�3";
	Leer N1_M3
	Escribir "Digite nota N�2, materia N�3"; 
	Leer N2_M3
	Escribir "Digite nota N�3, materia N�3";
	Leer N3_M3
	promedio_M3<-(N1_M3+N2_M3+N3_M3)/3
	notas_M3<-promedio_M3
FinFuncion
Funcion promedio_g<-promedioGeneral(notas_M1,notas_M2,notas_M3)
	promedio_g<-(notas_m1+notas_m2+notas_m3)/3
	Escribir "promedio de la materia N�1: ",notas_M1;
	Escribir "promedio de la materia N�2: ",notas_M2;
	Escribir "promedio de la materia N�3: ",notas_M3;
	Escribir "promedio general: ", promedio_g;
FinFuncion

Algoritmo promedios
	Definir notas_m1,notas_m2, notas_m3, promedio_g Como Real
	notas_m1<-materia1
	notas_m2<-materia2
	notas_m3<-materia3
	promedio_g<-promedioGeneral(notas_m1,notas_m2,notas_m3)
FinAlgoritmo
	