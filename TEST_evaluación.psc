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
	//PREGUNTA 1 GENERO
	Definir genero Como entero
	
	Escribir nombre, " Indique su genero: 1|MUJER Y 2|HOMBRE"
	Leer genero 
	
	Mientras No EsNumero(genero) o (genero <> 1 y genero <> 2) Hacer
		Escribir "Error, Por favor ingrese un valor válido."
		Escribir nombre, " Indique su genero: 1|MUJER Y 2|HOMBRE"
		Leer genero
	FinMientras
	
	Si genero = 1 Entonces
		Escribir "Género seleccionado: MUJER"
	Sino
		Escribir "Género seleccionado: HOMBRE"
	FinSi

FinProceso


