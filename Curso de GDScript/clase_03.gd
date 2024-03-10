extends Node

func _ready():
	var inventario = {hierbas = 15, 
		madera = 1300}
	
	print(inventario["hierbas"])
	
	inventario.hechizos = ["lumus","wingardium leviosa","avada kedabra"]
	inventario.hierbas +=1
	inventario.erase("madera")
	
	print(inventario)
	
	for clave in inventario.keys():
		print(clave)
		print(inventario[clave])
