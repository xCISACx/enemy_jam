extends Node2D

onready var audio_player = $AudioStreamPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	audio_player.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
