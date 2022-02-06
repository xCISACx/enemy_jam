extends Node2D

var enemies_spawned = 0
var global_mouse_position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	global_mouse_position = get_global_mouse_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
