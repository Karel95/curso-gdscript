extends Node

func _ready():
	var texto = "Gracias Mario! "
	
	print(texto[1])
	
	texto = texto + "\r\t Pero ya veras  
	\r que con el tiempo\\ todas las 
	\r \"princesas\" se convierten en 
	\r\t brujas."
	
	print(texto)
	
	var nombre = texto.get_slice(" ", 1)
	
	print(nombre)
	
	var array_trozos = nombre.split("")
	
	print(array_trozos)
	print(nombre.to_upper())
	print(nombre.to_lower())
	
	texto = texto.replace("Mario", "Luigi")
	
	print(texto)
	
