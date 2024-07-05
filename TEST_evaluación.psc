Proceso Test_Evaluacion_Box
		
	// INICIO DE EVALUACI�N DE TEST
	// Definir variables
	Definir nombre Como Caracter
	Definir apellido Como Caracter
	
	// BIENVENIDA AL TEST

	Escribir "BIENVENIDO AL TEST DE RENDIMIENTO FISICO PARA LLEGAR A SER UN BOXEADOR PROFESIONAL"
	Escribir "--------------------------------------------------------"
	Escribir "POR FAVOR INGRESE SUS DATOS PERSONALES"
	
	
	//----------// PREGUNTA DATOS B�SICO 
	// PREGUNTA A
	Escribir "A. �Cu�l es su nombre?"
	Leer nombre
	nombre = Mayusculas(nombre)
	// PREGUNTA B
	Escribir "B. �Cu�l es su apellido?"
	Leer apellido
	
	// PREGUNTA C - DNI 8 DIGITOS
	
	Definir DNI Como caracter
	Definir long_dni  Como Entero
	Escribir "C. Ingrese su DNI (debe tener 8 d�gitos):"
	Leer DNI
	long_dni = Longitud(DNI)
	
	Mientras long_dni <> 8 Hacer
		Escribir "DNI inv�lido. Debe tener exactamente 8 d�gitos. Intente nuevamente:"
		Leer DNI
		long_dni = Longitud (DNI)
		
	FinMientras
    
    Escribir "DNI v�lido: ", DNI
	
	Escribir "--------------------------------------------------------"
	Escribir , nombre, " LEA ATENTAMENTE CADA PREGUNTA Y REPONDA"
	Escribir "--------------------------------------------------------"
	
	
	//----------// PREGUNTAS CANCELATORIAS
	Escribir "--------------------------------------------------------"
	Escribir "PREGUNTAS ELIMINARTORIAS"
	Escribir "--------------------------------------------------------"
	// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N� 1 - GENERO
	
	Escribir nombre, " Indique su genero:" 
	Escribir "1|MUJER Y 2|HOMBRE"
	Leer genero 
	n <- validarSiEsNumero(genero)
	
	
	si n = 2
		Escribir "Usted califica para el TEST"
		
		// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N� 2 - EDAD
		Definir edad Como Caracter
		Definir validarmenos, validaredad Como Logico
		// Repetir para verificar que el dato ingresado sea un n�mero
		Repetir
			Escribir nombre, " �Cu�ntos a�os tienes? - (ingresar n�mero)"
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
					
					// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N� 3 - PESO
					
					Definir peso Como Caracter
					Definir validarmenospeso, validarpeso Como Logico
					
					// Repetir para verificar que el dato ingresado sea un n�mero
					Repetir
						Escribir nombre, " �Cu�l es tu peso en Kg? - (Puede ingresar entero o decimales)"
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
						
						// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N� 4 - PRESI�N
						
						Escribir nombre," � Cu�nto es tu presion arterial? (Responda seg�n las opciones)"
						Escribir "1| Mayor 120"
						Escribir "2| Menor a 120"
						
						Leer presion
						
						n <- validarSiEsNumero(presion)
						
						si n = 2 Entonces
							Escribir nombre, " CONTINUEMOS, Usted se encuentra en buen estado f�sico"
							// --------------------------------------------------------------------------------------------- PREGUNTA CANCELATORIA N� 5 - ESFUERZO F�SICO
							
							Escribir nombre," �Usted realizo lguna ves un test de esfuerzo f�sico? (Responda seg�n las opciones)"
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
								Escribir "El objetivo de este test es evaluar la flexibilidad, fuerza y resistencia de los postulantes para determinar su capacidad de desempe�o en el boxeo profesional en la categor�a peso gallo."
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N�1
																
								Escribir nombre,"�Llegaste a alcanzar los dedos de los pies sin doblar las rodillas? (responda segun indique)" 
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alcanzoDedos
								
								n <- validarSiEsNumero(alcanzoDedos)
								
								si n = 1 Entonces
									Escribir nombre, "Acumulaste puntos!"
										PUNTOS <- PUNTOS + 2
										Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N�2
								
								Escribir nombre,"�Llegaste a alcanzar la rodilla con la mano sin inclinarse? (responda segun indique)" 
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alcanzorodillas
								
								n <- validarSiEsNumero(alcanzorodillas)
								si n = 1 Entonces
									Escribir nombre, "Acumulaste puntos!"
									PUNTOS <- PUNTOS + 2
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N�3
								
								Escribir nombre,"�Pudo alcanzar a tocarse el tobillo sin inclinarse? (responda segun indique)"
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alcanzotobillo
								
								n <- validarSiEsNumero(alcanzotobillo)
								si n = 1 Entonces
									Escribir nombre, "Acumulaste puntos!"
									PUNTOS <- PUNTOS + 2
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST FLEXIBILIDAD PUNTOS N�4
								Escribir nombre,"�Pudo alcanzar estando sentado en el suelo los dedos de los pies? (responda segun indique)"
								Escribir "1| Si"
								Escribir "2| No"
								
								Leer alczopies
								
								n <- validarSiEsNumero(alczopies)
								si n = 1 Entonces
									Escribir nombre, "Acumulaste puntos!"
									PUNTOS <- PUNTOS + 2
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								SiNo
									Escribir nombre, "No se acumularon puntos"
									Escribir "Usted tiene ", PUNTOS, " puntos acumulados."
								FinSi
								
								//--------------------------------------------------------------------------------------------------------------------------------------------------------- PREGUNTA TEST RESISTENCIA PUNTOS N�5
								
								
								
								
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


