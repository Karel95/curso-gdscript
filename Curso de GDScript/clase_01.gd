extends Node

func _ready():
	print("Hola Mundo")
	cocina()
	para_luego()
	lenguaje_tipado()
	operadores()
	condiciones()
	bucles()

#region NOTAS IMPORTANTES Region
#TODO ...SE DEBE ARRASTRAR EL SCRIPT HACIA EL NODO PARA ASIGNARLO.
#ATTENTION ALERT 
#INFO TEST 
#BUG WARNING
#endregion

func cocina():
	const cazuelaGrande = "cebollas y patatas"
	var _cazuelaChica:String = "especias"
	var array = [1,2,3,4,5]
	print(cazuelaGrande)
	print(array[2])
	array[0] = "uno"
	print(array[0])

func para_luego():
	var _coordenadas = Vector2(1.1,7.18)
	var _coordenadas_entero = Vector2i(1,7)
	var _coordenadas3D = Vector3i(3,4,5)
	var _color_fondo = Color(1,1,1,0)

func lenguaje_tipado():
	var _mi_texto:String = "Una frase."
	var _mi_nroEntero:int = 78
	var _mi_nroDecimal:float = 7.21
	var mi_coordenada2D:Vector2 = Vector2(1,2.75)
	print(mi_coordenada2D.angle())

func operadores():
	const vida_inicial = 10
	var vida_actual = vida_inicial + 15
	var damage = 5
	vida_actual = vida_actual - damage
	print(vida_actual)
	
	var negativo = -damage
	var potencia = 2**3 #8
	var resto = 5%2 #1
	print(negativo * potencia - resto)
	
	damage += 2
	damage -= 3
	damage *= 2
	damage /= 3
	damage **= 2
	
	var _muerto = vida_actual == 0
	var _herido = vida_actual != vida_inicial
	var _muy_vivo = vida_actual > 8
	var _vivo = vida_actual >= 1
	var _muy_herido = vida_actual <= 5
	var saludo = "Hola"
	var despedida = "Adios"
	print(saludo == despedida)
	
	var _herido_ok = vida_actual < vida_inicial and vida_actual > 0
	_herido_ok = vida_actual < vida_inicial and not _muerto
	var _operador_or = true or false #true
	var _operador_and = true and true #true
	var _operador_not = not true #false
	
	#Los distintos operadores se pueden combinar. Ejemplo:
	var _pulsa_recoger = true
	var _recogida_automatica = true
	var _hay_algo_cerca = true
	var _inventario_lleno = true
	var _puede_coger_cosas = (_pulsa_recoger or _recogida_automatica) \
		and _hay_algo_cerca and not _inventario_lleno
	print(_puede_coger_cosas)

func condiciones():
	var vida = 5
	var pociones = 3
	if vida == 0:
		print("Player is dead.")
	elif vida >= 1:
		print("Player is alive.")
	elif vida == 10:
		print("Toda la vida.")
	elif vida < 0:
		print("Player is crazy.")
	else:
		if pociones > 0:
			pociones = pociones - 1
			print("Vida restaurada.")
		else:
			print("Ha muerto")
	print("Continua el juego.")

func bucles():
	var turnos = 3
	var array = ["hola",18,"adios"]
	
	while turnos > 0:
		print(turnos)
		turnos = turnos - 1
	
	for i in [0,1,2]:
		print(i)
	
	for letra in "turnos":
		print(letra)
	
	for i in array.size():
		array[i] = i
		print(array)
	
	for i in 5:
		if (i == 0):
			continue
		elif (i == 2):
			break
		print(i)
	
	print("Ha terminado la ronda.")

