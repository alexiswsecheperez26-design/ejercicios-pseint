Algoritmo AreaRectangulo
    Dimension bases[10], alturas[10] // Max 10 rectángulos
    Dimension areas[10]
    Definir opcion Como Entero
    Definir i, num_rectangulos_registrados Como Entero
    Definir base, altura, area Como Real
    
    num_rectangulos_registrados = 1
    
    Repetir
        Escribir "--- Cálculo de Área de Rectángulo ---"
        Escribir "1. Añadir rectángulo"
        Escribir "2. Modificar un rectángulo"
        Escribir "3. Mostrar rectángulos y áreas"
        Escribir "4. Salir"
        Escribir "Ingrese su opción: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Añadir rectángulo
                Si num_rectangulos_registrados < 10 Entonces
                    Escribir "Ingrese la base del rectángulo ", num_rectangulos_registrados + 1, ": "
                    Leer base
                    Escribir "Ingrese la altura del rectángulo ", num_rectangulos_registrados + 1, ": "
                    Leer altura
                    
                    bases[num_rectangulos_registrados] = base
                    alturas[num_rectangulos_registrados] = altura
                    
                    area = base * altura
                    
                    num_rectangulos_registrados = num_rectangulos_registrados + 1
                    Escribir "Rectángulo añadido correctamente."
                Sino
                    Escribir "No se pueden añadir más rectángulos. Límite alcanzado."
                FinSi
            2: // Modificar un rectángulo
                Si num_rectangulos_registrados > 1 Entonces
                    Escribir "Ingrese el número del rectángulo a modificar (1-", num_rectangulos_registrados, "): "
                    Leer i
                    Si i >= 1 Y i <= num_rectangulos_registrados Entonces
                        Escribir "Ingrese la nueva base para el rectángulo ", i, ": "
                        Leer base
                        Escribir "Ingrese la nueva altura para el rectángulo ", i, ": "
                        Leer altura
                        
                        bases[i-1] = base
                        alturas[i-1] = altura
                        
                        area = base * altura
                        areas[i-1] = area
                        
                        Escribir "Rectángulo modificado correctamente."
                    Sino
                        Escribir "Número de rectángulo inválido."
                    FinSi
                Sino
                    Escribir "No hay rectángulos registrados para modificar."
                FinSi
            3: // Mostrar rectángulos y áreas
                Si num_rectangulos_registrados > 1 Entonces
                    Escribir "Listado de Rectángulos:"
                    Para i = 1 Hasta num_rectangulos_registrados - 1 Hacer
                        Escribir "--- Rectángulo ", i + 1, " ---"
                        Escribir "  Base: ", bases[i]
                        Escribir "  Altura: ", alturas[i]
                        Escribir "  Área: ", areas[i]
                    FinPara
                Sino
                    Escribir "No hay rectángulos registrados."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de área de rectángulo."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
