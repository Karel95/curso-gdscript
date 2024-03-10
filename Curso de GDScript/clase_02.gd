extends Node

func _ready():
	var inventario = []
	inventario = ["pocion"]
	inventario.append("hierbas")
	var inventario2 = [1,2,3]
	inventario2.clear()
	print(inventario2)
	
	for objeto in inventario:
		print(objeto)
		
	for posicion in inventario.size():
		if inventario[posicion] == "pocion":
			inventario[posicion] = "pocion vacia"
		elif inventario[posicion] == "hierbas":
			inventario.remove_at(posicion)
			print(inventario)
	
	var loot = ["pocion", "arma", "escudo"]
	inventario.append_array(loot)
	
	inventario.insert(2, "lanza")
	
	print(inventario.has("arma"))
	print(inventario.find("arma"))
	print(inventario)
	
	loot.reverse()
	print(loot)
	
	loot.sort()
	print(loot)
	
	loot.shuffle()#aleatorio
	print(loot)
	
	#ejemplo real a continuacion:
	var inventario_real = []
	var loot_real = ["pocion", "arma", "escudo"]
	
	loot_real.shuffle()
	inventario_real.append(loot_real[0])
	loot_real.clear()
	
	print(inventario_real)
	print(loot_real)
