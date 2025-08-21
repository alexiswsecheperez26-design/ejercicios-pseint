Algoritmo AsistenteNutricional
    // Declaraci�n de variables
    Definir peso, altura, imc Como Real;
    Definir categoriaIMC Como Caracter;
	
    // Bienvenida e instrucciones al usuario
    Escribir "Bienvenido al Asistente de Nutrici�n";
    Escribir "------------------------------------";
    Escribir "Este programa le ayudar� a calcular su �ndice de Masa Corporal (IMC).";
    Escribir "";
	
    // Solicitar el peso y validarlo
    Escribir "Por favor, ingrese su peso en kilogramos (ej: 70.5):";
    Leer peso;
	
    Mientras peso <= 0 Hacer
        Escribir "El peso debe ser un n�mero positivo. Por favor, ingr�selo de nuevo:";
        Leer peso;
    FinMientras
	
    // Solicitar la altura y validarla
    Escribir "Ahora, ingrese su altura en metros (ej: 1.75):";
    Leer altura;
	
    Mientras altura <= 0 Hacer
        Escribir "La altura debe ser un n�mero positivo. Por favor, ingr�sela de nuevo:";
        Leer altura;
    FinMientras
	
    // Calcular el IMC
    // La f�rmula del IMC es el peso en kilogramos dividido por el cuadrado de la altura en metros.
    imc <- peso / (altura * altura);
	
    // Determinar la categor�a del IMC
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
    Escribir "Su �ndice de Masa Corporal (IMC) es: ", imc;
    Escribir "Categor�a seg�n su IMC: ", categoriaIMC;
    Escribir "------------------------------------";
    Escribir "Recuerde que el IMC es una herramienta de referencia. Para una evaluaci�n completa, consulte a un profesional de la salud.";
	
FinAlgoritmo
