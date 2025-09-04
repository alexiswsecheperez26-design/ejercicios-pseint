Algoritmo CalculadoraInteractiva
    // Definici�n de variables
    Definir opcion_operacion Como Caracter
    Definir num1, num2, resultado Como Real
    Definir continuar_calculando Como Logico
	
    continuar_calculando <- Verdadero
	
    Mientras continuar_calculando Hacer
        Limpiar Pantalla // Para una mejor experiencia de usuario
		
        // Men� Principal de Operaciones
        Escribir "***************************************"
        Escribir "*    CALCULADORA B�SICA INTERACTIVA   *"
        Escribir "***************************************"
        Escribir "1. Sumar"
        Escribir "2. Restar"
        Escribir "3. Multiplicar"
        Escribir "4. Dividir"
        Escribir "5. Salir"
        Escribir "***************************************"
        Escribir "Ingrese el n�mero de la operaci�n deseada (1-5): "
        Leer opcion_operacion
		
        // Evaluar la opci�n seleccionada por el usuario
        Segun opcion_operacion Hacer
            "1": // Sumar
                Escribir "--- SUMA ---"
                Escribir "Ingrese el primer n�mero: "
                Leer num1
                Escribir "Ingrese el segundo n�mero: "
                Leer num2
                resultado <- num1 + num2
                Escribir "El resultado de la suma es: ", resultado
            "2": // Restar
                Escribir "--- RESTA ---"
                Escribir "Ingrese el primer n�mero: "
                Leer num1
                Escribir "Ingrese el segundo n�mero: "
                Leer num2
                resultado <- num1 - num2
                Escribir "El resultado de la resta es: ", resultado
            "3": // Multiplicar
                Escribir "--- MULTIPLICACI�N ---"
                Escribir "Ingrese el primer n�mero: "
                Leer num1
                Escribir "Ingrese el segundo n�mero: "
                Leer num2
                resultado <- num1 * num2
                Escribir "El resultado de la multiplicaci�n es: ", resultado
            "4": // Dividir
                Escribir "--- DIVISI�N ---"
                Escribir "Ingrese el dividendo (primer n�mero): "
                Leer num1
                Escribir "Ingrese el divisor (segundo n�mero): "
                Leer num2
				
                // Manejo de divisi�n por cero
                Si num2 = 0 Entonces
                    Escribir "ERROR: No se puede dividir entre cero."
                    resultado <- 0 // O asignar un valor especial, o simplemente no asignar
                Sino
                    resultado <- num1 / num2
                    Escribir "El resultado de la divisi�n es: ", resultado
                FinSi
            "5": // Salir
                continuar_calculando <- Falso
                Escribir "Gracias por usar la calculadora. �Hasta pronto!"
            De Otro Modo: // Manejo de opciones inv�lidas
                Escribir "Opci�n inv�lida. Por favor, ingrese un n�mero del 1 al 5."
                Esperar Tecla // Pausa para que el usuario vea el mensaje de error
        FinSegun
		
        // Si la operaci�n no fue salir y no hubo error de divisi�n por cero
        Si continuar_calculando y (opcion_operacion >= "1" y opcion_operacion <= "4") y (opcion_operacion <> "4" o num2 <> 0) Entonces
            // Determinar si el resultado es par o impar
            // Solo para resultados enteros o que se puedan considerar enteros
            Si resultado - trunc(resultado) = 0 Entonces // Verifica si es un n�mero entero
                Si resultado MOD 2 = 0 Entonces
                    Escribir "El resultado (", resultado, ") es un n�mero PAR."
                Sino
                    Escribir "El resultado (", resultado, ") es un n�mero IMPAR."
                FinSi
            Sino
                Escribir "El resultado (", resultado, ") no es un n�mero entero, por lo tanto no aplica si es par o impar."
            FinSi
        FinSi
		
        // Preguntar al usuario si desea realizar otra operaci�n, excepto si ya decidi� salir
        Si continuar_calculando Entonces
            Escribir "" // Salto de l�nea para mejor lectura
            Escribir "�Desea realizar otra operaci�n? (S/N): "
            Leer opcion_operacion // Reutilizamos la variable, cuidado con esto en otros lenguajes
            Si Mayusculas(opcion_operacion) = "N" Entonces
                continuar_calculando <- Falso
                Escribir "Gracias por usar la calculadora. �Hasta pronto!"
            FinSi
        FinSi
        Esperar Tecla // Pausa general antes de limpiar pantalla o salir
    FinMientras
	
FinAlgoritmo
