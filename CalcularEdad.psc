Algoritmo CalcularEdad
    // PSeInt no maneja fechas directamente, as� que pediremos a�o actual y a�o de nacimiento.
    // Para simplificar, asumiremos que si el mes/d�a de nacimiento ya pas� en el a�o actual, la edad es (a�o_actual - a�o_nacimiento).
    // Si no ha pasado, es (a�o_actual - a�o_nacimiento - 1). Esto es una aproximaci�n.
    
    Dimension nombres[3]
    Dimension anios_nacimiento[3], meses_nacimiento[3], dias_nacimiento[3]
    Dimension edades[3]
    Definir opcion Como Entero
    Definir i Como Entero
    Definir anio_actual, mes_actual, dia_actual Como Entero
    
    Repetir
        Escribir "--- C�lculo de Edad ---"
        Escribir "1. Guardar datos de personas"
        Escribir "2. Modificar datos de una persona"
        Escribir "3. Mostrar edades"
        Escribir "4. Salir"
        Escribir "Ingrese su opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Guardar datos de personas
                Escribir "Ingrese la fecha actual (A�o Mes D�a):"
                Leer anio_actual, mes_actual, dia_actual
                Para i = 1 Hasta 2 Hacer
                    Escribir "--- Persona ", i + 1, " ---"
                    Escribir "Ingrese nombre: "
                    Leer nombres[i] 
                    Escribir "Ingrese a�o de nacimiento: "
                    Leer anios_nacimiento[i]
                    Escribir "Ingrese mes de nacimiento: "
                    Leer meses_nacimiento[i]
                    Escribir "Ingrese d�a de nacimiento: "
                    Leer dias_nacimiento[i]
                    
                    edades[i] = anio_actual - anios_nacimiento[i]
                    Si mes_actual < meses_nacimiento[i] Entonces
                        edades[i] = edades[i] - 1
                    Sino Si mes_actual = meses_nacimiento[i] Entonces
							Si dia_actual < dias_nacimiento[i] Entonces
								edades[i] = edades[i] - 1
							FinSi
						FinSi
					FinSi
					
					FinPara
					Escribir "Datos guardados correctamente."
				2: // Modificar datos de una persona
					Escribir "Ingrese el n�mero de persona a modificar (1-3): "
					Leer i
					Si i >= 1 Y i <= 3 Entonces
						Escribir "Ingrese el nuevo nombre para persona ", i, ": "
						Leer nombres[i-1]
						Escribir "Ingrese el nuevo a�o de nacimiento: "
						Leer anios_nacimiento[i-1]
						Escribir "Ingrese el nuevo mes de nacimiento: "
						Leer meses_nacimiento[i-1]
						Escribir "Ingrese el nuevo d�a de nacimiento: "
						Leer dias_nacimiento[i-1]
					FinSi
					
						
						// Recalcular edad
						edades[i-1] = anio_actual - anios_nacimiento[i-1]
						Si mes_actual < meses_nacimiento[i-1] Entonces
							edades[i-1] = edades[i-1] - 1
						Sino Si mes_actual = meses_nacimiento[i-1] Entonces
								Si dia_actual < dias_nacimiento[i-1] Entonces
									edades[i-1] = edades[i-1] - 1
								FinSi
							FinSi
							Escribir "Datos de persona modificados correctamente."
							Escribir "N�mero de persona inv�lido."
						FinSi
					3: // Mostrar edades
						Escribir "Fechas de Nacimiento y Edades (Fecha actual: ", anio_actual, "/", mes_actual, "/", dia_actual, "):"
						Para i = 1 Hasta 2 Hacer
							Escribir "--- Persona ", i + 1, " ---"
							Escribir "  Nombre: ", nombres[i]
							Escribir "  Fecha Nacimiento: ", anios_nacimiento[i], "/", meses_nacimiento[i], "/", dias_nacimiento[i]
							Escribir "  Edad: ", edades[i], " a�os"
						FinPara
					4: // Salir
						Escribir "Saliendo del programa de c�lculo de edad."
					De Otro Modo:
						Escribir "Opci�n inv�lida. Intente de nuevo."
				FinSegun
				
				Esperar Tecla
				Limpiar Pantalla
			Hasta Que opcion = 4
    
FinAlgoritmo