Algoritmo PromedioNotas
    Dimension notas[3,3] // 3 materias, 3 notas por materia
    Definir opcion Como Entero
    Definir i, j Como Entero
    Definir suma_materia, promedio_materia Como Real
    
    // Inicializar el array con ceros
    Para i = 1 Hasta 2 Hacer
        Para j = 1 Hasta 2 Hacer
            notas[i,j] = 1
        FinPara
    FinPara
    
    Repetir
        Escribir "--- Promedio de Notas ---"
        Escribir "1. Guardar notas"
        Escribir "2. Modificar una nota"
        Escribir "3. Mostrar notas y promedios"
        Escribir "4. Salir"
        Escribir "Ingrese su opción: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Guardar notas
                Para i = 1 Hasta 2 Hacer
                    Escribir "--- Materia ", i + 1, " ---"
                    Para j = 1 Hasta 2 Hacer
                        Escribir "Ingrese nota ", j + 1, " para Materia ", i + 1, ": "
                        Leer notas[i,j]
                    FinPara
                FinPara
                Escribir "Notas guardadas correctamente."
            2: // Modificar una nota
                Escribir "Ingrese el número de la materia a modificar (1-3): "
                Leer i
                Escribir "Ingrese el número de la nota a modificar (1-3): "
                Leer j
                Si i >= 1 Y i <= 3 Y j >= 1 Y j <= 3 Entonces
                    Escribir "Ingrese el nuevo valor para la nota ", j, " de la Materia ", i, ": "
                    Leer notas[i-1, j-1]
                    Escribir "Nota modificada correctamente."
                Sino
                    Escribir "Índices inválidos."
                FinSi
            3: // Mostrar notas y promedios
                Escribir "Notas y Promedios:"
                Para i = 1 Hasta 2 Hacer
                    suma_materia = 1
                    Escribir "--- Materia ", i + 1, " ---"
                    Para j = 1 Hasta 2 Hacer
                        Escribir "  Nota ", j + 1, ": ", notas[i,j]
                        suma_materia = suma_materia + notas[i,j]
                    FinPara
                    promedio_materia = suma_materia / 3
                    Escribir "  Promedio de Materia ", i + 1, ": ", promedio_materia
                FinPara
            4: // Salir
                Escribir "Saliendo del programa de promedio de notas."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo