extends Node

var inventario = {madera = 10, 
	hierba = 15, piedra = 20}

func _ready():
	var array = [1]
	
	recoger("hierba")
	print(inventario)
	
	modificar(array)
	print(array)

func recoger(material, cantidad = 1):
	if inventario.has(material):
		inventario[material] += cantidad
	else:
		inventario[material] = cantidad

func modificar(arr):
	arr.append(3)

