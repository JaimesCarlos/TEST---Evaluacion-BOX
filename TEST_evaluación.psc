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
	// PREGUNTA CANCELATORIA N� 1 - GENERO
	Definir genero Como entero
	
	Escribir nombre, " Indique su genero: 1|MUJER Y 2|HOMBRE"
	Leer genero 
	
	Mientras genero <> 1 y genero <> 2 Hacer
		Escribir "Error, Por favor ingrese un valor v�lido."
		Escribir nombre, " Indique su genero: 1|MUJER Y 2|HOMBRE"
		Leer genero
	FinMientras
	
	si genero = 2
		Escribir "Usted califica para el TEST"
		
		// PREGUNTA CANCELATORIA N� 2 - EDAD
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
					validadedad <- Falso
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
					
					Escribir nombre ,"CONTINUEMOS, Usted califica para el TEST"
					
					// PREGUNTA CANCELATORIA N� 3 - PESO
					
					
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
						Escribir nombre ,"CONTINUEMOS, Usted califica para el TEST"
						
					SiNo
						Escribir nombre ,"Usted tiene un desorden alimenticio. NO PUEDE CONTINUAR CON EL TEST"
						
					FinSi			
					
					
			SiNo
				Escribir nombre, "Eres menor de edad. NO PUEDES CONTINUAR CON EL TEST"
			Fin si
			
	SiNo
		
		Escribir "NO PUEDES CONTINUAR, este test es solo para el genero masculino"
		
	Fin si	
	
	// VARIABLE PUNTO
	Definir PUNTOS Como Entero
	
FinProceso


