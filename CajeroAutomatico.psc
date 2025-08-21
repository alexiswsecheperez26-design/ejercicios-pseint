Algoritmo CajeroAutomatico
	
    Definir saldo, montoRetiro Como Real
    Definir opcion Como Caracter
	
    saldo <- 1000 // Saldo inicial de ejemplo
    opcion <- 'si'
	
    Mientras opcion = 'si' O opcion = 'SI' Hacer
        Escribir "Su saldo actual es: $", saldo
        Escribir "Ingrese el monto que desea retirar:"
        Leer montoRetiro
		
        // Verifica si el monto a retirar es v�lido y si hay saldo suficiente
        Si montoRetiro > 0 Y montoRetiro <= saldo Entonces
            saldo <- saldo - montoRetiro
            Escribir "Retiro exitoso. Su nuevo saldo es: $", saldo
        SiNo
            Escribir "Error: Monto no v�lido o saldo insuficiente."
        FinSi
		
        Escribir "�Desea realizar otra transacci�n? (si/no)"
        Leer opcion
    FinMientras
	
    Escribir "Gracias por usar el cajero autom�tico."

FinAlgoritmo
