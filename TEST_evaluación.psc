Proceso Test_Evaluacion_Box
		
	// INICIO DE EVALUACIÓN DE TEST
	// Definir variables
	Definir nombre Como Caracter
	Definir apellido Como Caracter
	
	// BIENVENIDA AL TEST

	Escribir "BIENVENIDO AL TEST DE RENDIMIENTO FISICO PARA LLEGAR A SER UN BOXEADOR PROFESIONAL"
	Escribir "--------------------------------------------------------"
	Escribir "POR FAVOR INGRESE SUS DATOS PERSONALES"
	
	
	//----------// PREGUNTA DATOS BÁSICO 
	// PREGUNTA A
	Escribir "A. ¿Cuál es su nombre?"
	Leer nombre
	nombre = Mayusculas(nombre)
	// PREGUNTA B
	Escribir "B. ¿Cuál es su apellido?"
	Leer apellido
	
	// PREGUNTA C - DNI 8 DIGITOS
	
	Definir DNI Como caracter
	Definir long_dni  Como Entero
	Escribir "C. Ingrese su DNI (debe tener 8 dígitos):"
	Leer DNI
	long_dni = Longitud(DNI)
	
	Mientras long_dni <> 8 Hacer
		Escribir "DNI inválido. Debe tener exactamente 8 dígitos. Intente nuevamente:"
		Leer DNI
		long_dni = Longitud (DNI)
		
	FinMientras
    
    Escribir "DNI válido: ", DNI
	
	Escribir "--------------------------------------------------------"
	Escribir , nombre, " LEA ATENTAMENTE CADA PREGUNTA Y REPONDA"
	Escribir "--------------------------------------------------------"
	
	
	//----------// PREGUNTAS CANCELATORIAS
	Escribir "--------------------------------------------------------"
	Escribir "PREGUNTAS ELIMINARTORIAS"
	Escribir "--------------------------------------------------------"
	// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N° 1 - GENERO
	
	Escribir nombre, " Indique su genero:" 
	Escribir "1|MUJER Y 2|HOMBRE"
	Leer genero 
	n <- validarSiEsNumero(genero)
	
	
	si n = 2
		Escribir "Usted califica para el TEST"
		
		// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N° 2 - EDAD
		Definir edad Como Caracter
		Definir validarmenos, validaredad Como Logico
		// Repetir para verificar que el dato ingresado sea un número
		Repetir
			Escribir nombre, " ¿Cuántos años tienes? - (ingresar número)"
			Leer edad
			largoedad <- Longitud(edad)
			validaredad <- Verdadero
			validarmenos <- Verdadero
			contarpunto <- 0
			
			Para i <- 1 Hasta largoedad Con Paso 1 Hacer
				edadunico <- Subcadena(edad,i,i)
				si edadunico <> '0' y edadunico <> '1' y edadunico <> '2' y edadunico <> '3' y edadunico <> '4' y edadunico <> '5' y edadunico <> '6' y edadunico <> '7' y edadunico <> '8' y edadunico <> '9' y edadunico <> '.' y edadunico <> '-'
					validaredad <- Falso
				FinSi
				Si edadunico= '.' Entonces
					contarpunto <- contarpunto + 1
				Fin Si
				
				si edadunico = '-' Entonces
					si i = 1 Entonces
						validarmenos <- Verdadero
					SiNo
						validarmenos <- Falso
					FinSi
				FinSi
				
				
			FinPara
		Hasta Que validaredad = Verdadero Y (contarpunto=0 O contarpunto=1) y validarmenos = Verdadero
		
		edadI <- ConvertirANumero(edad)
			
		//CONDICIONAL SI ES O NO MAYOR DE EDAD
			si edadI > 18 Entonces
					
					Escribir nombre ," CONTINUEMOS, Usted califica para el TEST"
					
					// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N° 3 - PESO
					
					Definir peso Como Caracter
					Definir validarmenospeso, validarpeso Como Logico
					
					// Repetir para verificar que el dato ingresado sea un número
					Repetir
						Escribir nombre, " ¿Cuál es tu peso en Kg? - (Puede ingresar entero o decimales)"
						Leer peso
						largopeso <- Longitud(peso)
						validarpeso <- Verdadero
						validarmenospeso <- Verdadero
						contarpuntopeso <- 0
						
						Para i <- 1 Hasta largopeso Con Paso 1 Hacer
							pesounico <- Subcadena(peso,i,i)
							si pesounico <> '0' y pesounico <> '1' y pesounico <> '2' y pesounico <> '3' y pesounico <> '4' y pesounico <> '5' y pesounico <> '6' y pesounico <> '7' y pesounico <> '8' y pesounico <> '9' y pesounico <> '.' y pesounico <> '-'
								validarpeso <- Falso
							FinSi
							Si pesounico= '.' Entonces
								contarpuntopeso <- contarpuntopeso + 1
							Fin Si
							
							si pesounico = '-' Entonces
								si i = 1 Entonces
									validarmenospeso <- Verdadero
								SiNo
									validarmenospeso <- Falso
								FinSi
							FinSi
							
							
						FinPara
					Hasta Que validarpeso = Verdadero Y (contarpuntopeso=0 O contarpuntopeso=1) y validarmenospeso = Verdadero
					pesoI <- ConvertirANumero(peso)
					
					si pesoI >= 48 Y pesoI <= 57 Entonces
						Escribir nombre ," CONTINUEMOS, Usted califica para el TEST"
						
						// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N° 4 - PRESIÓN
						
						Escribir nombre," ¿ Cuánto es tu presion arterial? (Responda según las opciones)"
						Escribir "1| Mayor 120"
						Escribir "2| Menor a 120"
						
						Leer presion
						
						n <- validarSiEsNumero(presion)
						
						si n = 2 Entonces
							Escribir nombre, " CONTINUEMOS, Usted se encuentra en buen estado físico"
							// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N° 5 - ESFUERZO FÍSICO
							
							Escribir nombre," ¿Usted realizó alguna ves un test de esfuerzo físico? (Responda según las opciones)"
							Escribir "1| Si"
							Escribir "2| No"
							
							Leer es_fisico
							
							n <- validarSiEsNumero( es_fisico )
							
							Si n = 1 Entonces
								
								Escribir nombre, " Es un deportista con experiencia, USTED ES APTO PARA RENDIR LOS TEST DE EVALUACION PARA BOXISTA PROIFESIONAL"
								
								Escribir "/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*"
								Escribir "TEST EVALUACION"
								// VARIABLE PUNTO
								Definir PUNTOS Como Entero
								
							
								Escribir "FLEXIBILIDAD"
								Escribir "El objetivo de este test es evaluar la flexibilidad, fuerza y resistencia de los postulantes para determinar su capacidad de desempeño en el boxeo profesional en la categoría peso gallo."
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N°1
																
								Escribir nombre," ¿Llegaste a alcanzar los dedos de los pies sin doblar las rodillas? (responda segun indique)" 
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alcanzoDedos
								
								n <- validarSiEsNumero(alcanzoDedos)
								
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N°2
								
								Escribir nombre," ¿Llegaste a alcanzar la rodilla con la mano sin inclinarse? (responda segun indique)" 
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alcanzorodillas
								
								n <- validarSiEsNumero(alcanzorodillas)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 2
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N°3
								
								Escribir nombre," ¿Pudo alcanzar a tocarse el tobillo sin inclinarse? (responda segun indique)"
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alcanzotobillo
								
								n <- validarSiEsNumero(alcanzotobillo)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 2
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N°4
								Escribir nombre," ¿Pudo alcanzar estando sentado en el suelo los dedos de los pies? (responda segun indique)"
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alczopies
								
								n <- validarSiEsNumero(alczopies)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 2
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST RESISTENCIA PUNTOS N°5
								Escribir nombre,"¿cuánto tiempo puede correr durante un ritmo constante?  (responda segun indique)"
								Escribir "1| 60 minutos"
								Escribir "2| 30 minutos"
								Escribir "3| 15 minutos"
								
								Leer correrRitmoCons
								n <- validarSiEsNumero(correrRitmoCons)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST RESISTENCIA PUNTOS N°6
								Escribir nombre,"¿cuántas repeticiones SEGUIDAS realizo en salto de cuerda? (responda segun indique)"
								Escribir "1| 100 saltos"
								Escribir "2| 50 saltos"
								Escribir "3| 25 saltos"
								
								Leer saltosSeguidos
								n <- validarSiEsNumero(saltosSeguidos)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST RESISTENCIA PUNTOS N°7
								Escribir nombre,"¿Cuántos golpes realizó en 30 segundos a máxima velocidad? (responda segun indique)"
								Escribir "1| Menos de 150"
								Escribir "2| Menos de 130"
								Escribir "3| Menos de 120"
								
								Leer golpesMaxV
								n <- validarSiEsNumero(golpesMaxV)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST RESISTENCIA PUNTOS N°8
								Escribir nombre,"¿Cuál fué su consumo máximo de oxígeno? en ml/kg/min (responda segun indique)"
								Escribir "1| Entre 80 y 64"
								Escribir "2| Entre 63 y 53"
								Escribir "3| Entre 52 y 40"
								
								Leer consumoH2o
								n <- validarSiEsNumero(consumoH2o)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FUERZA PUNTOS N°9
								Escribir nombre,"¿Cuál es la distancia de lanzamiento de balón medicinal (4kg) logró el deportista? lanzamiento de martillo - (responda segun indique)"
								Escribir "1| 06 metros"
								Escribir "2| 04 metros"
								Escribir "3| 02 metros"
								
								Leer lanzaBalon
								n <- validarSiEsNumero(lanzaBalon)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FUERZA PUNTOS N°10
								Escribir nombre,"¿Cuál es la altura máxima que alcanzo en salto vertical? (responda segun indique)"
								Escribir "1| mas de 03 metros"
								Escribir "2| mas de 2.5 metros"
								Escribir "3| mas de 02 metros"
								
								Leer saltoMax
								n <- validarSiEsNumero(saltoMax)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FUERZA PUNTOS N°11
								Escribir nombre," ¿Cuántos press de banca realizo en 5 min (1.5 veces su peso corporal)?  (responda segun indique)"
								Escribir "1| mas de 15"
								Escribir "2| mas de 10"
								Escribir "3| mas de 5"
								
								Leer presMax
								n <- validarSiEsNumero(presMax)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo 
										Escribir nombre, "Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FUERZA PUNTOS N°12
								Escribir nombre," ¿Cuánto peso máximo logro levantar en la sentadilla completa?  (responda segun indique)"
								Escribir "1| mas de 130"
								Escribir "2| mas de 93"
								Escribir "3| mas de 64"
								
								Leer levantarMax
								n <- validarSiEsNumero(levantarMax)
								si n = 1 Entonces
									Escribir nombre, " Acumulaste puntos!"
									PUNTOS <- PUNTOS + 6
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									si n = 2 Entonces
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 4
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
									SiNo
										Escribir nombre, " Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
										
									FinSi
									
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- FINAL DE PREGUNTAS, AGRADECIMIENTOS Y TOTAL DE PUNTOS
								Escribir nombre, " GRACIAS POR PARTICIPAR EN EL TEST "
								Escribir " USTED OBTUVO ", PUNTOS, " PUNTOS EN SU EVALUACIÓN"
								
								SI PUNTOS > 50 y PUNTOS <= 56 Entonces
									Escribir "*** Usted esta preparado para competir profesionalmente en un cuadrilatero"
									Escribir "** PODRA COMPETIR POR EL CINTURON PESO GALLO, FELICITACIONES **"
								SiNo
									SI PUNTOS > 25 y PUNTOS <= 49 Entonces
										Escribir "*** Usted tiene lo necesario para convertirse en un BOXEADOR, pero necesita ser mas disciplinado con su entremaniento"
										Escribir "** PODRA POSTULAR A ESTA EVALUACION LA SIGUIENTE TEMPORADA, SIGA ENTRENANDO **"
									SiNo 
										Escribir "*** PIERDE SU TIEMPO Y EL NUESTRO, CONIGA OTRO HOBBEI"
										Escribir "** NO TIENE LO NECESARIO PARA CONVERTIRSE EN BOXEADOR **"
									FinSi
								FinSi
								
							SiNo
								Escribir nombre, " ESTO ES UN TEST PARA BOXISTAS PROFESIONALES, Necesitas seguir practicando"
							FinSi
							
							
						SiNo
							Escribir nombre, "Deberia hacer mas ejercicio"
						FinSi
						
					SiNo
						Escribir nombre ," Usted tiene un desorden alimenticio. NO PUEDE CONTINUAR CON EL TEST"
						
					FinSi			
					
					
			SiNo
				Escribir nombre, " Eres menor de edad. NO PUEDES CONTINUAR CON EL TEST"
			Fin si
			
	SiNo
		
		Escribir " NO PUEDES CONTINUAR, este test es solo para el genero masculino"
		
	Fin si	
	
	
FinProceso

// FUNCION PARA VALIDAR NUMERO
Funcion n <- validarSiEsNumero(num)
	Definir validarmenosnum, validarnum Como Logico
	Repetir
		largonum <- Longitud(num)
		validarnum <- Verdadero
		validarmenosnum <- Verdadero
		contarpuntonum <- 0
		
		Para i <- 1 Hasta largonum Con Paso 1 Hacer
			numunico <- Subcadena(num,i,i)
			si numunico <> '0' y numunico <> '1' y numunico <> '2' y numunico <> '3' y numunico <> '4' y numunico <> '5' y numunico <> '6' y numunico <> '7' y numunico <> '8' y numunico <> '9' y numunico <> '.' y numunico <> '-'
				validarnum <- Falso
			Fin Si
			Si numunico= '.' Entonces
				contarpuntonum <- contarpuntonum + 1
			Fin Si
			
			si edadunico = '-' Entonces
				si i = 1 Entonces
					validarmenosnum <- Verdadero
				SiNo
					validarmenosnum <- Falso
				Fin Si
			Fin Si
			
			
		FinPara
		
		Si validarnum = Falso o (contarpuntonum>1) o validarmenosnum = Falso Entonces
			Escribir "No esta ingresando una opcion o numero correcto"
			Leer num
		Fin Si
	Hasta Que validarnum = Verdadero Y (contarpuntonum=0 O contarpuntonum=1) y validarmenosnum = Verdadero
	
	n <- ConvertirANumero(num)
	
FinFuncion


