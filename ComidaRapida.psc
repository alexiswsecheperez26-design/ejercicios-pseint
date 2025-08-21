Algoritmo ComidaRapida
    Definir opcion, pedido Como Entero;
    Definir total Como Real;
    Definir resumen Como Cadena;
    
    total <- 0;
    resumen <- "";
    
    Repetir
        Escribir "MENU PRINCIPAL";
        Escribir "1. Ver menu";
        Escribir "2. Realizar pedido";
        Escribir "3. Salir";
        Escribir "Elija una opcion: ";
        Leer opcion;
        
        Segun opcion Hacer
            1:  // Ver menú
                Escribir "MENU DE COMIDAS RAPIDAS";
                Escribir "1. Hamburguesa - $12000";
                Escribir "2. Perro Caliente - $8000";
                Escribir "3. Pizza - $6000";
                Escribir "4. Gaseosa - $3000";
                Escribir "5. Papas Fritas - $5000";
                
            2:  // Realizar pedido
                Repetir
                    Escribir "Elija un producto (1-5) o 0 para terminar:";
                    Leer pedido;
                    
                    Segun pedido Hacer
                        1:
                            total <- total + 12000;
                            resumen <- resumen + "Hamburguesa - 12000";
                        2:
                            total <- total + 8000;
                            resumen <- resumen + "Perro Caliente - 8000";
                        3:
                            total <- total + 6000;
                            resumen <- resumen + "Pizza - 6000";
                        4:
                            total <- total + 3000;
                            resumen <- resumen + "Gaseosa - 3000";
                        5:
                            total <- total + 5000;
                            resumen <- resumen + "Papas Fritas - 5000";
                        0:
                            Escribir "Pedido finalizado...";
                        De Otro Modo:
                            Escribir "Error: producto no valido.";
                    FinSegun
                Hasta Que pedido = 0
                
                Escribir "RESUMEN DEL PEDIDO";
                Escribir resumen;
                Escribir "Total a pagar: ", total;
                
            3:  // Salir
                Escribir "Gracias por su visita. Hasta pronto.";
                
            De Otro Modo:
                Escribir "Error: opcion no valida. Intente de nuevo.";
        FinSegun
        
    Hasta Que opcion = 3
	
FinAlgoritmo
