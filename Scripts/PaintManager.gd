extends Node2D

var enemy_spawn_position = Vector2.ZERO
var in_enemy_creator = false
var enemy_spawned = false
onready var walker_enemy_scene = preload("res://Scenes/WalkerEnemy.tscn")
onready var flyer_enemy_scene = preload("res://Scenes/FlyerEnemy.tscn")
onready var bomb_enemy_scene = preload("res://Scenes/BombEnemy.tscn")
onready var paint_popup = get_node("/root/Level/CanvasLayer/PaintRoot")
onready var close_button = get_node("/root/Level/CanvasLayer/PaintRoot/CloseButton")
onready var paint_control = get_node("/root/Level/CanvasLayer/PaintRoot/ViewportContainer/Viewport/PaintControl")
onready var drawing_camera = get_node("/root/Level/CanvasLayer/PaintRoot/DrawingCamera")
onready var main_camera = get_node("/root/Level/MC/Camera2D")
var last_saved_picture_name = ""
var can_draw = false
signal s

enum {
	WALKER,
	FLYER,
	BOMB
}

var enemy_type = WALKER

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass # Replace with function body.
	
func _process(delta):
	pass
	
#func _input(event):
#	if Input.is_action_just_pressed("left_mouse"):
#		if not enemy_spawned and not in_enemy_creator:
#			enemy_spawn_position = get_global_mouse_position()
#			#open_enemy_creator()
#	else:
#		pass
#	if Input.is_key_pressed(KEY_1):
#		enemy_type = WALKER
#		print("walker")
#	elif Input.is_key_pressed(KEY_2):
#		enemy_type = FLYER
#		print("flyer")
#	elif Input.is_key_pressed(KEY_3):
#		enemy_type = BOMB
#		print("bomb")
	

func spawn_enemy():
	
	var enemy
	
	match enemy_type:
		WALKER:
			enemy = walker_enemy_scene.instance()
		FLYER:
			enemy = flyer_enemy_scene.instance()
		BOMB:
			enemy = bomb_enemy_scene.instance()
	
	get_tree().root.add_child(enemy)
	enemy.global_position = enemy_spawn_position

	enemy.get_node("Sprite").texture = load_external_texture("user://images/" + last_saved_picture_name)
	
	GameManager.enemies_spawned += 1
	print(GameManager.enemies_spawned)
	
func load_external_texture(path):
	var tex_file = File.new()
	tex_file.open(path, File.READ)
	var buffer = tex_file.get_buffer(tex_file.get_len())
	
	var img = Image.new()
	img.load_png_from_buffer(buffer)
	var imgtex = ImageTexture.new()
	imgtex.create_from_image(img)
	
	tex_file.close()
	return imgtex
	
#func open_enemy_creator():
#	paint_control.set_process(true)
#	enemy_spawned = false
#	in_enemy_creator = true
#	can_draw = true
#	drawing_camera.current = true
#	get_tree().paused = true
#	paint_popup.show()
	
func close_enemy_creator():
	paint_control.set_process(false)
	get_tree().paused = false
	main_camera.current = true
	in_enemy_creator = false
	can_draw = false
	paint_popup.hide()

func _on_PaintControl_saved_image():
	close_enemy_creator()
	spawn_enemy()
