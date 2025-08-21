Algoritmo AsistenteNutricional
    // Declaración de variables
    Definir peso, altura, imc Como Real;
    Definir categoriaIMC Como Caracter;
	
    // Bienvenida e instrucciones al usuario
    Escribir "Bienvenido al Asistente de Nutrición";
    Escribir "------------------------------------";
    Escribir "Este programa le ayudará a calcular su Índice de Masa Corporal (IMC).";
    Escribir "";
	
    // Solicitar el peso y validarlo
    Escribir "Por favor, ingrese su peso en kilogramos (ej: 70.5):";
    Leer peso;
	
    Mientras peso <= 0 Hacer
        Escribir "El peso debe ser un número positivo. Por favor, ingréselo de nuevo:";
        Leer peso;
    FinMientras
	
    // Solicitar la altura y validarla
    Escribir "Ahora, ingrese su altura en metros (ej: 1.75):";
    Leer altura;
	
    Mientras altura <= 0 Hacer
        Escribir "La altura debe ser un número positivo. Por favor, ingrésela de nuevo:";
        Leer altura;
    FinMientras
	
    // Calcular el IMC
    // La fórmula del IMC es el peso en kilogramos dividido por el cuadrado de la altura en metros.
    imc <- peso / (altura * altura);
	
    // Determinar la categoría del IMC
    Si imc < 18.5 Entonces
        categoriaIMC <- "Bajo peso";
    Sino
        Si imc < 24.9 Entonces
            categoriaIMC <- "Peso normal";
        Sino
            Si imc < 29.9 Entonces
                categoriaIMC <- "Sobrepeso";
            Sino
                categoriaIMC <- "Obesidad";
            FinSi
        FinSi
    FinSi
	
    // Mostrar los resultados al usuario
    Escribir "";
    Escribir "------ Resultados de su IMC ------";
    Escribir "Su Índice de Masa Corporal (IMC) es: ", imc;
    Escribir "Categoría según su IMC: ", categoriaIMC;
    Escribir "------------------------------------";
    Escribir "Recuerde que el IMC es una herramienta de referencia. Para una evaluación completa, consulte a un profesional de la salud.";
	
FinAlgoritmo
