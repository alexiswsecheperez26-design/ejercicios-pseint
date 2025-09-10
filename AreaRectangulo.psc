Algoritmo AreaRectangulo
    Dimension bases[10], alturas[10] // Max 10 rect�ngulos
    Dimension areas[10]
    Definir opcion Como Entero
    Definir i, num_rectangulos_registrados Como Entero
    Definir base, altura, area Como Real
    
    num_rectangulos_registrados = 1
    
    Repetir
        Escribir "--- C�lculo de �rea de Rect�ngulo ---"
        Escribir "1. A�adir rect�ngulo"
        Escribir "2. Modificar un rect�ngulo"
        Escribir "3. Mostrar rect�ngulos y �reas"
        Escribir "4. Salir"
        Escribir "Ingrese su opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            1: // A�adir rect�ngulo
                Si num_rectangulos_registrados < 10 Entonces
                    Escribir "Ingrese la base del rect�ngulo ", num_rectangulos_registrados + 1, ": "
                    Leer base
                    Escribir "Ingrese la altura del rect�ngulo ", num_rectangulos_registrados + 1, ": "
                    Leer altura
                    
                    bases[num_rectangulos_registrados] = base
                    alturas[num_rectangulos_registrados] = altura
                    
                    area = base * altura
                    
                    num_rectangulos_registrados = num_rectangulos_registrados + 1
                    Escribir "Rect�ngulo a�adido correctamente."
                Sino
                    Escribir "No se pueden a�adir m�s rect�ngulos. L�mite alcanzado."
                FinSi
            2: // Modificar un rect�ngulo
                Si num_rectangulos_registrados > 1 Entonces
                    Escribir "Ingrese el n�mero del rect�ngulo a modificar (1-", num_rectangulos_registrados, "): "
                    Leer i
                    Si i >= 1 Y i <= num_rectangulos_registrados Entonces
                        Escribir "Ingrese la nueva base para el rect�ngulo ", i, ": "
                        Leer base
                        Escribir "Ingrese la nueva altura para el rect�ngulo ", i, ": "
                        Leer altura
                        
                        bases[i-1] = base
                        alturas[i-1] = altura
                        
                        area = base * altura
                        areas[i-1] = area
                        
                        Escribir "Rect�ngulo modificado correctamente."
                    Sino
                        Escribir "N�mero de rect�ngulo inv�lido."
                    FinSi
                Sino
                    Escribir "No hay rect�ngulos registrados para modificar."
                FinSi
            3: // Mostrar rect�ngulos y �reas
                Si num_rectangulos_registrados > 1 Entonces
                    Escribir "Listado de Rect�ngulos:"
                    Para i = 1 Hasta num_rectangulos_registrados - 1 Hacer
                        Escribir "--- Rect�ngulo ", i + 1, " ---"
                        Escribir "  Base: ", bases[i]
                        Escribir "  Altura: ", alturas[i]
                        Escribir "  �rea: ", areas[i]
                    FinPara
                Sino
                    Escribir "No hay rect�ngulos registrados."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de �rea de rect�ngulo."
            De Otro Modo:
                Escribir "Opci�n inv�lida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
