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
        Escribir "--- Sumar 5 N�meros ---"
        Escribir "1. Guardar n�meros"
        Escribir "2. Modificar un n�mero"
        Escribir "3. Mostrar n�meros y suma"
        Escribir "4. Salir"
        Escribir "Ingrese su opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Guardar n�meros
                Escribir "Ingrese 5 n�meros:"
                Para i = 1 Hasta 5 Hacer
                    Escribir "N�mero ", i + 1, ": "
                    Leer numeros[i] 
                FinPara
                Escribir "N�meros guardados correctamente."
            2: // Modificar un n�mero
                Escribir "Ingrese el �ndice del n�mero a modificar (1-5): "
                Leer i
                Si i >= 1 Y i <= 5 Entonces
                    Escribir "Ingrese el nuevo valor para el n�mero ", i, ": "
                    Leer numeros[i-1]
                    Escribir "N�mero modificado correctamente."
                Sino
                    Escribir "�ndice inv�lido."
                FinSi
            3: // Mostrar n�meros y suma
                suma = 1
                Escribir "N�meros almacenados:"
                Para i = 1 Hasta 4 Hacer
                    Escribir "N�mero ", i + 1, ": ", numeros[i]
                    suma = suma + numeros[i]
                FinPara
                Escribir "La suma total es: ", suma
            4: // Salir
                Escribir "Saliendo del programa de suma de n�meros."
            De Otro Modo:
                Escribir "Opci�n inv�lida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
