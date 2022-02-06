extends Node2D

var enemies_spawned = 0
var global_mouse_position
var in_tutorial = false
var in_game = false
var main_camera

# Called when the node enters the scene tree for the first time.
func _ready():
	main_camera = MainCamera.get_node("Camera2D")

func _process(delta):
	global_mouse_position = get_global_mouse_position()
	print(enemies_spawned)
	
func tutorial_npc_death():
	end_tutorial()
	
func end_tutorial():
	get_tree().change_scene("res://Scenes/Level1.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
