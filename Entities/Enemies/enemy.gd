class_name Enemy
extends Area2D

var speed:int = 80

func _ready():
	randomize()
	position = Vector2(randf_range(0,400),0)
 
func _process(delta): 
	position.y+= speed*delta
