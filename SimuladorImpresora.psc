Algoritmo SimuladorImpresora
    Definir papelDisponible, paginasAImprimir Como Entero
    Definir continuar Como Caracter
	
    papelDisponible <- 100 // Cantidad inicial de hojas
    continuar <- 's'
	
    // El bucle se ejecuta mientras haya papel Y el usuario quiera seguir
    Mientras papelDisponible > 0 Y (continuar = 's' O continuar = 'S') Hacer
        Escribir "Papel disponible: ", papelDisponible, " hojas."
        Escribir "�Cu�ntas p�ginas desea imprimir?"
        Leer paginasAImprimir
		
        // Verifica si hay suficiente papel para el trabajo de impresi�n
        Si paginasAImprimir <= papelDisponible Entonces
            papelDisponible <- papelDisponible - paginasAImprimir
            Escribir "Imprimiendo ", paginasAImprimir, " p�ginas. ��xito!"
            Escribir "Quedan ", papelDisponible, " hojas de papel."
        SiNo
            Escribir "Error: No hay suficiente papel. Solo quedan ", papelDisponible, " hojas."
        FinSi
		
        // Si a�n queda papel, preguntar si desea continuar
        Si papelDisponible > 0 Entonces
            Escribir "�Desea realizar otro trabajo de impresi�n? (s/n)"
            Leer continuar
        SiNo
            Escribir "Se ha agotado el papel."
        FinSi
    FinMientras
	
    Escribir "Simulaci�n de impresora finalizada."
	
FinAlgoritmo
