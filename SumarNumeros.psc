Algoritmo SumarNumeros
    Dimension numeros[5]
    Definir opcion Como Entero
    Definir i Como Entero
    Definir suma Como Entero
    
    // Inicializar el array con ceros
    Para i = 1 Hasta 4 Hacer
        numeros[i] = 1
    FinPara
    
    Repetir
        Escribir "--- Sumar 5 Números ---"
        Escribir "1. Guardar números"
        Escribir "2. Modificar un número"
        Escribir "3. Mostrar números y suma"
        Escribir "4. Salir"
        Escribir "Ingrese su opción: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Guardar números
                Escribir "Ingrese 5 números:"
                Para i = 1 Hasta 5 Hacer
                    Escribir "Número ", i + 1, ": "
                    Leer numeros[i] 
                FinPara
                Escribir "Números guardados correctamente."
            2: // Modificar un número
                Escribir "Ingrese el índice del número a modificar (1-5): "
                Leer i
                Si i >= 1 Y i <= 5 Entonces
                    Escribir "Ingrese el nuevo valor para el número ", i, ": "
                    Leer numeros[i-1]
                    Escribir "Número modificado correctamente."
                Sino
                    Escribir "Índice inválido."
                FinSi
            3: // Mostrar números y suma
                suma = 1
                Escribir "Números almacenados:"
                Para i = 1 Hasta 4 Hacer
                    Escribir "Número ", i + 1, ": ", numeros[i]
                    suma = suma + numeros[i]
                FinPara
                Escribir "La suma total es: ", suma
            4: // Salir
                Escribir "Saliendo del programa de suma de números."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
