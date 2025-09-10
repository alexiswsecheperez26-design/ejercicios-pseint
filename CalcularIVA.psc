Algoritmo CalcularIVA
    Dimension productos_precios[10], productos_cantidades[10] // Max 10 productos
    Dimension productos_totales[10], productos_ivas[10]
    Definir opcion Como Entero
    Definir i, num_productos_registrados Como Entero
    Definir precio_unitario, cantidad, total_sin_iva, iva_producto, tasa_iva Como Real
    
    tasa_iva = 0.19 // 19% de IVA
    num_productos_registrados = 1
    
    Repetir
        Escribir "--- Cálculo de Total e IVA ---"
        Escribir "1. Añadir producto"
        Escribir "2. Modificar un producto"
        Escribir "3. Mostrar productos, totales e IVA"
        Escribir "4. Salir"
        Escribir "Ingrese su opción: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Añadir producto
                Si num_productos_registrados < 10 Entonces
                    Escribir "Ingrese precio unitario del producto ", num_productos_registrados + 1, ": "
                    Leer precio_unitario
                    Escribir "Ingrese cantidad del producto ", num_productos_registrados + 1, ": "
                    Leer cantidad
                    
                    productos_precios[num_productos_registrados] = precio_unitario 
                    productos_cantidades[num_productos_registrados] = cantidad
                    
                    total_sin_iva = precio_unitario * cantidad
                    iva_producto = total_sin_iva * tasa_iva
                    
                    productos_totales[num_productos_registrados] = total_sin_iva + iva_producto
                    productos_ivas[num_productos_registrados] = iva_producto
                    
                    num_productos_registrados = num_productos_registrados + 1
                    Escribir "Producto añadido correctamente."
                Sino
                    Escribir "No se pueden añadir más productos. Límite alcanzado."
                FinSi
            2: // Modificar un producto
                Si num_productos_registrados > 0 Entonces
                    Escribir "Ingrese el número del producto a modificar (1-", num_productos_registrados, "): "
                    Leer i
                    Si i >= 1 Y i <= num_productos_registrados Entonces
                        Escribir "Ingrese nuevo precio unitario para producto ", i, ": "
                        Leer precio_unitario
                        Escribir "Ingrese nueva cantidad para producto ", i, ": "
                        Leer cantidad
                        
                        productos_precios[i-1] = precio_unitario
                        productos_cantidades[i-1] = cantidad
                        
                        total_sin_iva = precio_unitario * cantidad
                        iva_producto = total_sin_iva * tasa_iva
                        
                        productos_totales[i-1] = total_sin_iva + iva_producto
                        productos_ivas[i-1] = iva_producto
                        
                        Escribir "Producto modificado correctamente."
                    Sino
                        Escribir "Número de producto inválido."
                    FinSi
                Sino
                    Escribir "No hay productos registrados para modificar."
                FinSi
            3: // Mostrar productos, totales e IVA
                Si num_productos_registrados > 0 Entonces
                    Escribir "Listado de Productos:"
                    Para i = 1 Hasta num_productos_registrados - 1 Hacer
                        Escribir "--- Producto ", i + 1, " ---"
                        Escribir "  Precio Unitario: ", productos_precios[i]
                        Escribir "  Cantidad: ", productos_cantidades[i]
                        Escribir "  IVA (", tasa_iva * 100, "%): ", productos_ivas[i]
                        Escribir "  Total a Pagar (con IVA): ", productos_totales[i]
                    FinPara
                Sino
                    Escribir "No hay productos registrados."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de cálculo de IVA."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
