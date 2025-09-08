Algoritmo AsistenteNutricional_SinErrores
    // 1. Declaración de variables en el algoritmo principal
    Definir peso_usuario, altura_usuario, imc_calculado Como Real;
    Definir categoria_imc_obtenida Como Caracter;
	
    // 2. Mostrar bienvenida e instrucciones (Subproceso)
    MostrarBienvenida();
	
    // 3. Solicitar y validar el peso (Función)
    peso_usuario <- SolicitarYValidarDato("peso en kilogramos", "peso", "kg");
	
    // 4. Solicitar y validar la altura (Función)
    altura_usuario <- SolicitarYValidarDato("altura en metros", "altura", "metros");
	
    // 5. Calcular el IMC (Función)
    imc_calculado <- CalcularIMC(peso_usuario, altura_usuario);
	
    // 6. Determinar la categoría del IMC (Función)
    categoria_imc_obtenida <- ObtenerCategoriaIMC(imc_calculado);
	
    // 7. Mostrar los resultados (Subproceso)
    MostrarResultados(imc_calculado, categoria_imc_obtenida);
	
FinAlgoritmo


// --- Definición de Funciones y Subprocesos ---

// Subproceso para mostrar la bienvenida y las instrucciones iniciales
SubProceso MostrarBienvenida()
    Escribir "Bienvenido al Asistente de Nutrición";
    Escribir "------------------------------------";
    Escribir "Este programa le ayudará a calcular su Índice de Masa Corporal (IMC).";
    Escribir "";
FinSubProceso

// Función para solicitar un dato (peso o altura) y validarlo para que sea positivo
Funcion dato_validado_retorno <- SolicitarYValidarDato(mensaje_solicitud, tipo_dato_msg_error, unidad_msg)
    // Declaración de variables locales para la función
    Definir dato_validado_retorno Como Real;
    
    Definir ejemplo_valor Como Caracter; // Variable para almacenar el ejemplo de valor
	
    // Calculamos el texto del ejemplo primero, ya que PSeInt no permite Si-Entonces-Sino dentro de Escribir
    Si tipo_dato_msg_error = "peso" Entonces
        ejemplo_valor <- "70.5";
    Sino
        ejemplo_valor <- "1.75";
    FinSi
	
    Escribir "Por favor, ingrese su ", mensaje_solicitud, " (ej: ", ejemplo_valor, "):"; // Ahora usamos la variable `ejemplo_valor`
    Leer dato_validado_retorno;
	
    Mientras dato_validado_retorno <= 0 Hacer
        Escribir "El ", tipo_dato_msg_error, " debe ser un número positivo. Por favor, ingréselo de nuevo en ", unidad_msg, ":";
        Leer dato_validado_retorno;
    FinMientras
    // El valor a retornar ya está en 'dato_validado_retorno'
FinFuncion

// Función para calcular el Índice de Masa Corporal (IMC)
Funcion imc_resultado_retorno <- CalcularIMC(peso_param, altura_param)
    // Declaración de variables locales para la función
   
    Definir imc_resultado_retorno Como Real;
    
    // La fórmula del IMC es el peso en kilogramos dividido por el cuadrado de la altura en metros.
    imc_resultado_retorno <- peso_param / (altura_param * altura_param);
FinFuncion

// Función para determinar y devolver la categoría del IMC
Funcion categoria_obtenida_retorno <- ObtenerCategoriaIMC(imc_param)
    // Declaración de variables locales para la función
    
    Definir categoria_obtenida_retorno Como Caracter;
	
    Si imc_param < 18.5 Entonces
        categoria_obtenida_retorno <- "Bajo peso";
    Sino
        Si imc_param < 24.9 Entonces
            categoria_obtenida_retorno <- "Peso normal";
        Sino
            Si imc_param < 29.9 Entonces
                categoria_obtenida_retorno <- "Sobrepeso";
            Sino
                categoria_obtenida_retorno <- "Obesidad";
            FinSi
        FinSi
    FinSi
    // El valor a retornar ya está en 'categoria_obtenida_retorno'
FinFuncion

// Subproceso para mostrar los resultados finales al usuario
SubProceso MostrarResultados(imc_a_mostrar, categoria_a_mostrar)
    // Declaración de variables locales para el subproceso
   
	
    Escribir "";
    Escribir "------ Resultados de su IMC ------";
Escribir "Su Índice de Masa Corporal (IMC) es: ", imc_a_mostrar 2; // Formato a 2 decimales para mejor lectura
    Escribir "Categoría según su IMC: ", categoria_a_mostrar;
    Escribir "------------------------------------";
    Escribir "Recuerde que el IMC es una herramienta de referencia. Para una evaluación completa, consulte a un profesional de la salud.";
FinSubProceso