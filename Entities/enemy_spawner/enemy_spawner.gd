extends Node
var enemy_scene:PackedScene= preload("res://Entities/Enemies/enemy.tscn")

func _ready():
	var boundry = get_parent().get_node("Boundry")
	boundry.body_entered.connect(_the_end)
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time= 1.5
	timer.one_shot = false
	timer.timeout.connect(_create_enemy)
	timer.start()

func _create_enemy():
	var enemy= enemy_scene.instantiate()
	get_parent().get_node("Enemies").add_child(enemy)
func _the_end(body:Node):
	if body is Enemy: 
		get_tree().paused = true
	
