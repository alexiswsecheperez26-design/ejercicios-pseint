Algoritmo DescuentoCompra
    Dimension compras_montos[10], compras_descuentos[10] // Max 10 compras
    Dimension compras_finales[10]
    Definir opcion Como Entero
    Definir i, num_compras_registradas Como Entero
    Definir monto_compra, porcentaje_descuento, monto_descuento, precio_final Como Real
    
    num_compras_registradas = 1
    
    Repetir
        Escribir "--- Cálculo de Descuento en Compras ---"
        Escribir "1. Añadir compra"
        Escribir "2. Modificar una compra"
        Escribir "3. Mostrar compras y precios finales"
        Escribir "4. Salir"
        Escribir "Ingrese su opción: "
        Leer opcion
        
        Segun opcion Hacer
            1: // Añadir compra
                Si num_compras_registradas < 10 Entonces
                    Escribir "Ingrese el monto total de la compra ", num_compras_registradas + 1, ": "
                    Leer monto_compra
                    Escribir "Ingrese el porcentaje de descuento (ej. 10 para 10%) para la compra ", num_compras_registradas + 1, ": "
                    Leer porcentaje_descuento
                    
                    compras_montos[num_compras_registradas] = monto_compra
                    compras_descuentos[num_compras_registradas] = porcentaje_descuento
                    
                    monto_descuento = monto_compra * (porcentaje_descuento / 100)
                    precio_final = monto_compra - monto_descuento
                    
                    compras_finales[num_compras_registradas] = precio_final
                    
                    num_compras_registradas = num_compras_registradas + 1
                    Escribir "Compra añadida correctamente."
                Sino
                    Escribir "No se pueden añadir más compras. Límite alcanzado."
                FinSi
            2: // Modificar una compra
                Si num_compras_registradas > 0 Entonces
                    Escribir "Ingrese el número de la compra a modificar (1-", num_compras_registradas, "): "
                    Leer i
                    Si i >= 1 Y i <= num_compras_registradas Entonces
						
                        Escribir "Ingrese el nuevo monto total de la compra ", i, ": "
                        Leer monto_compra
                        Escribir "Ingrese el nuevo porcentaje de descuento (ej. 10 para 10%) para la compra ", i, ": "
                        Leer porcentaje_descuento
                        
                        compras_montos[i-1] = monto_compra
                        compras_descuentos[i-1] = porcentaje_descuento
                        
                        monto_descuento = monto_compra * (porcentaje_descuento / 100)
                        precio_final = monto_compra - monto_descuento
                        
                        compras_finales[i-1] = precio_final
                        
                        Escribir "Compra modificada correctamente."
                    Sino
                        Escribir "Número de compra inválido."
                    FinSi
                Sino
                    Escribir "No hay compras registradas para modificar."
                FinSi
            3: // Mostrar compras y precios finales
                Si num_compras_registradas > 0 Entonces
                    Escribir "Listado de Compras:"
                    Para i = 1 Hasta num_compras_registradas - 1 Hacer
                        Escribir "--- Compra ", i + 1, " ---"
                        Escribir "  Monto Original: ", compras_montos[i]
                        Escribir "  Porcentaje de Descuento: ", compras_descuentos[i], "%"
                        Escribir "  Precio Final: ", compras_finales[i]
                    FinPara
                Sino
                    Escribir "No hay compras registradas."
                FinSi
            4: // Salir
                Escribir "Saliendo del programa de descuentos."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
        
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 4
    
FinAlgoritmo
