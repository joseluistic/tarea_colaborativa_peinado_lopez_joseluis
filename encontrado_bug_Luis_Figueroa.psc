Proceso OrdenaLista
    
    Dimension lista[200]
    
    Escribir "Ingrese los nombres (enter en blanco para terminar):"
    
    cant<-0
    Leer nombre
    Mientras nombre<>"" Hacer
        cant<-cant+1
        lista[cant]<-nombre
        Repetir 
            Leer nombre
            se_repite<-Falso
            Para i<-1 Hasta cant Hacer
                Si nombre=lista[i] Entonces
                    se_repite<-Verdadero 
					//aqu� se encontraba el "BUG", en esta estructura, ya que se habia introducido FALSo y es VERDADERO//	
					
                FinSi
            FinPara
        Hasta Que NO se_repite
    FinMientras
    
    Para i<-1 Hasta cant-1 Hacer
        
        pos_menor<-i
        Para j<-i+1 Hasta cant Hacer
            Si lista[j]<lista[pos_menor] Entonces
                pos_menor<-j
            FinSi
        FinPara
		
        aux<-lista[i]
        lista[i]<-lista[pos_menor]
        lista[pos_menor]<-aux
    FinPara    
    
    Escribir "La lista ordenada es:"
    Para i<-1 Hasta cant Hacer
        Escribir "   ",lista[i]
    FinPara
    
FinProceso