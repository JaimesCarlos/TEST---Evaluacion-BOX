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
	//PREGUNTA 1 GENERO
	Definir genero Como entero
	
	Escribir nombre, " Indique su genero: 1|MUJER Y 2|HOMBRE"
	Leer genero 
	
	Mientras No EsNumero(genero) o (genero <> 1 y genero <> 2) Hacer
		Escribir "Error, Por favor ingrese un valor v�lido."
		Escribir nombre, " Indique su genero: 1|MUJER Y 2|HOMBRE"
		Leer genero
	FinMientras
	
	Si genero = 1 Entonces
		Escribir "G�nero seleccionado: MUJER"
	Sino
		Escribir "G�nero seleccionado: HOMBRE"
	FinSi

FinProceso


