table (jackie$CD_A)
table (jackie$CLASE1)

jackie$R_DEF1 <- as.numeric (as.character (jackie$R_DEF))#hacer una variable de tipo caracter a numerica 
jackie$C_RES1 <- as.numeric (as.character (jackie$C_RES))
jackie$EDA1 <- as.numeric (as.character (jackie$EDA))
precod <- subset (jackie, ((R_DEF1 == 0) & (C_RES1 == 1 | C_RES1 == 3)  & (EDA1>=15 & EDA1<=98)), select =c(EDA1, SEX, HRSOCUP, CLASE2, CLASE1, CLASE3 ))
table (precod$R_DEF1) #Se llama de la base precod por que es en la que estamos trabajando 
table (precod$C_RES1)
table (precod$EDA1)
### es para marcar diferencia =!
attach (precod)
CLASE2v1 <- table(CLASE2)
CLASE2v1
hist (CLASE2,)
##hist es para agregar histogramas
hist (CLASE2, main= "Grafica 1. Distribucion de la poblacion de 15 años o mas, 2015",
      xlab = "Tipo de ocupada", ylab = "Poblacion (miles)", 
      xlim = c(1,4), ylim= c(0,200000),
      border = T, pch= 18, col = c(100, 10, 58, 1))