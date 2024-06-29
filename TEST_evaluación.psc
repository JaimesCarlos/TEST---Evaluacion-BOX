Proceso cuestionarioGenero
	
// Hola buenas noches
//PREGUNTAS DATOS BASICOS
	Definir nombre Como Caracter
	Definir apellido Como Caracter
	Definir DNI Como Entero
	Definir peleas Como Entero
	
	Escribir "BIENVENIDO AL TEST DE RENDIMIENTO FISICO PARA LLEGAR A SER UN BOXEADOR PROFESIONAL"
	Escribir "--------------------------------------------------------"
	Escribir "POR FAVOR INGRESE SUS DATOS PERSONALES"
	Escribir "¿Cuál es su nombre?"
	Leer nombre
	Escribir "¿Cuál es su apellido?"
	Leer apellido
	Escribir "Escriba su numero de DNI"
	Leer DNI
	
	
	Escribir "--------------------------------------------------------"
	Escribir "LEA ATENTAMENTE CADA PREGUNTA Y REPONDA "
	Escribir "--------------------------------------------------------"
	
	
//PREGUNTA 1 GENERO --- CACELATORIA
	Definir genero Como caracter
	Definir edad Como Entero
	
	Escribir "Indique su genero"
	Escribir "M = Masculino"
	Escribir "F = Femenino"
	
	leer genero
	
	genero<-Mayusculas(genero)
	
	Si genero = "M" Entonces
		Escribir "Usted califica para el test"
		//PREGUNTA 2 EDAD ------------ CACELATORIA
		Escribir nombre,"¿Cuántos años tienes?"
		Leer edad
		Si edad >= 0 y edad <= 17 Entonces
			Escribir "No es apto"
		Sino
			Si edad >= 18 y edad <= 40 Entonces
				Escribir "Sí es apto"
				//PREGUNTA 3 EDAD ----------- CACELATORIA
				Definir PesoKg Como Real
				
				Escribir nombre,"Ingrese su peso en kg"
				Leer PesoKg
				
				si PesoKg >= 48 Y PesoKg <= 57 Entonces
					Escribir "Es apto"
					//PREGUNTA 4 EDAD ----------- CACELATORIA
					Definir presion Como caracter
					Escribir nombre,"¿Cuanto es tu presion arterial?"
					Escribir "a = Mayor 120"
					Escribir "b = Menor a 120"
					
					Leer presion
					
					Si presion = "a" Entonces
						Escribir "Sí es apto" 
						//PREGUNTA 5 Esfuerzo Fisico ----------- CACELATORIA
						Definir ES_fisico Como Caracter
						Escribir nombre,"¿Usted realizo lguna ves un test de esfuerzo físico?"
						Escribir "si"
						Escribir "no"
						
						Leer ES_fisico 
						ES_fisico <- Minusculas(ES_fisico)
						
						Si ES_fisico = "si" Entonces
							Escribir "Es apto"
							//INICIO DE TEST---------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
														
							//----------------------------------------------------------------------------------------
							// INICIO DE CUESTIONARIO
							
							Definir PUNTOS Como Entero	
							
							Escribir "El objetivo de este test es evaluar la flexibilidad, fuerza y resistencia de los postulantes para determinar su capacidad de desempeño en el boxeo profesional en la categoría peso gallo."
							
							// -----FLEXIBILIDAD----- //
							
							//*************PRIMERA PREGUNTA*************//
							
							Definir alcanzoDedos Como Caracter 
							
							Escribir nombre,"¿Llegaste a alcanzar los dedos de los pies sin doblar las rodillas? (responda si o no)" 
							
							Leer alcanzoDedos; 
							
							alcanzoDedos <- Minusculas(alcanzoDedos) 
							
							Si alcanzoDedos = "si" Entonces 
								
								Escribir "El Participante sumó puntos!"; 
								PUNTOS <- PUNTOS + 2
							SiNo 
								
								Escribir "El Participante NO sumó puntos!" 
								
							FinSi 
							
							Escribir  "El participante acumulo: ", PUNTOS, " puntos."
							
							//*************SEGUNDA PREGUNTA*************//		
							
							Escribir nombre,"¿Llegaste a alcanzar la rodilla con la mano sin inclinarse? (responda si o no)" 
							
							Leer alcanzarRodillas; 
							
							alcanzarRodillas <- Minusculas(alcanzarRodillas) 
							
							Si alcanzarRodillas = "si" Entonces 
								
								Escribir "El Participante sumó puntos!"; 
								PUNTOS <- PUNTOS + 2
							SiNo 
								
								Escribir "El Participante NO sumó puntos!" 
								
							FinSi 
							
							Escribir  "El participante acumulo: ", PUNTOS, " puntos."
							
							
							// -----RESISTENCIA----- //
							//*************PRIMERA PREGUNTA*************//	
							
							Definir minutos Como Entero 
							
							Escribir nombre,"¿cuánto tiempo puede correr a un ritmo constante de 12 km/h? " 
							
							Leer minutos 
							
							Si minutos >= 0 Y minutos <= 15 Entonces 
								
								PUNTOS <- PUNTOS + 2
								
							Fin Si 
							
							Si minutos >= 16 Y minutos <= 30 Entonces 
								
								PUNTOS <- PUNTOS + 4
								
							Fin Si 
							
							
							Si minutos >= 31 Y minutos <= 60 Entonces 
								
								PUNTOS <- PUNTOS + 8
								
							Fin Si
							
							Escribir  "El participante acumulo: ", PUNTOS, " puntos."	
							
							//*************SEGUNDA PREGUNTA*************//		
							Definir saltos Como Entero 
							Definir puntos Como Entero 
							
							
							Escribir nombre,"¿Cuántos saltos de cuerda puede hacer una persona?" 
							
							Leer saltos 
							
							
							Si saltos >= 0 Y saltos <= 40 Entonces 
								
								puntos = 2 
								
							Fin Si 
							
							
							
							Si saltos >= 41 Y saltos <= 80 Entonces 
								puntos = 4 
							Fin Si
							
							Definir alternativa Como Caracter 
							
							Escribir nombre," Seleccione la cantidad de golpes que realizó en 30 segundos :" 
							
							Escribir " a.- más de 135 golpes" 
							
							Escribir " b .- entre 121 y 135 golpes" 
							
							Escribir " c.-  menos de 121 golpes" 
							
							Leer alternativa 
							
							Si alternativa = a O alternativa =b Entonces 
								
								Escribir "Su puntaje es 8 excelente" 
								
							SiNo 
								
								Escribir " Su puntaje es 2 deficiente" 
								
							Fin Si 
							
							Definir alter Como Caracter 
							
							Definir puntaje1, puntaje2 Como Entero 
							
							Escribir nombre," ¿Cuál fue su consumo de oxigeno :" 
							
							Escribir " a.- menos de 53" 
							
							Escribir " b .- entre 54 y 63" 
							
							Escribir " c.-  mas de 64" 
							
							Leer alter 
							
							Si alter = a O alter = b Entonces 
								
								puntaje1 <- 4+4 
								
								Escribir "Su puntaje es:", puntaje1, " excelente" 
								
							SiNo 
								
								puntaje2 <- 1+1 
								
								Escribir "Su puntaje es:", puntaje2, " deficiente" 
								
							Fin Si 
							
							
							Definir distancia, pesoBalon, fuerza, gravedad Como Real 
							
							pesoBalon = 4  // Peso del balón en kg 
							
							gravedad = 9.8  // Aceleración debida a la gravedad en m/s^2 
							
							
							
							Escribir "Ingresa la fuerza aplicada al lanzar el balón (en Newtons): " 
							
							Leer fuerza 
							
							
							
							// Calculamos la distancia utilizando la fórmula: distancia = (fuerza * pesoBalon) / gravedad 
							
							distancia = (fuerza * pesoBalon) / gravedad 
							
							
							
							Escribir "La distancia de lanzamiento del balón medicinal es ", distancia, " metros." 
							
							//*************************************************************************************************************
							
							Definir altura, gravedad Como Real 
							
							gravedad = 9.8  // Aceleración debida a la gravedad en m/s^2 
							
							
							
							Escribir "Ingresa la altura del salto vertical (en metros): " 
							
							Leer altura 
							
							
							
							// Calculamos la altura máxima utilizando la fórmula: altura = (velocidad_inicial^2) / (2 * gravedad) 
							
							altura = (altura * altura) / (2 * gravedad) 
							
							
							
							Escribir "La altura máxima alcanzada en el salto vertical es ", altura, " metros." 
							
							//*************************************************************************************************************
							Definir press Como Entero 
							
							Escribir "¿Cuantos press de banca realizo en 5 min.?" 
							
							leer press 
							
							
							
							Si press>=10 Entonces 
								
								Escribir "¡Obtuvo 6 puntos!" 
								
							SiNo 
								
								Escribir "¿Obtuvo 3 puntos!" 
								
							Fin Si 
							
							//*************************************************************************************************************
							
							Definir peso Como Entero 
							
							
							
							Escribir "¿Cuánto peso máximo logró levantar en la sentadilla completa?" 
							
							
							
							leer peso 
							
							
							
							Si peso>=93 Entonces 
								
								Escribir "¡Obtuvo 6 puntos!" 
								
							SiNo 
								
								Escribir "¿Obtuvo 3 puntos!" 
								
							Fin Si 
							//*************************************************************************************************************
						SiNo
							Escribir "No eres apto"
						FinSi
						
					SiNo
						Escribir "No eres apto"
					FinSi
					
				SiNo
					Escribir "No eres apto"
					
				FinSi

			Sino
				Escribir "No es apto"
			FinSi
		FinSi
		
	SiNo
		
		
		Escribir "No es acto, solo genero masculino"
		
	FinSi
	
	
	
FinProceso

