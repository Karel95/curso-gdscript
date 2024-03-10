extends Node

func _ready():
	var bienvenida = "Welcome, "
	var nombre = "Karel"
	var nro = 148
	var puntos = str(nro)+ " ptos."
	#str() convierte a texto.
	print(bienvenida + nombre)
	game_over(nombre, puntos)

func game_over(nombre, puntos):
	var mensaje = "Lo siento, "\
		+ nombre + "!"\
		+ " Has perdido."
	var puntuacion = "\n Has conseguido: "\
		+ puntos
	
	print(mensaje + puntuacion)
	play_sonido_derrota()
	
	return
	print("Este mensaje no se ejecutara 
		porque esta despues de \"return\"")

func play_sonido_derrota():
	pass
