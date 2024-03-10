class_name proyectil
extends Sprite2D

var speed = 10
var damage = 5

func _process(delta):
	moverse(delta)

func moverse(delta):
	position.x += speed * delta
	position.y += speed * delta

func explotar():
	pass


