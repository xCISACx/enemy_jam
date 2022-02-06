extends Node2D

var tileset = preload("res://CB_tileset.tres") 
onready var viewport = get_node("/root/CBManager/Main/Popup/ViewportContainer/Viewport")
onready var drawing_camera = get_node("/root/CBManager/Main/Popup/ViewportContainer/Camera2D")
onready var tilemap = get_node("/root/CBManager/Main/Popup/ViewportContainer/Viewport/TileMap")
onready var popup = get_node("/root/CBManager/Main/Popup")
var image_size = Vector2.ZERO

var mouse_pos
var current_color = 0
var color_list = [0]
var can_paint = false

onready var save_dialog = get_node("/root/CBManager/Main/Popup/Control/SaveDialog")
onready var load_dialog = get_node("/root/CBManager/Main/Popup/Control/LoadDialog")

var image_saved = false
var last_saved_picture = null

var enemy_spawn_position = Vector2.ZERO
var in_enemy_creator = false
var enemy_spawned = false
onready var walker_enemy_scene = preload("res://Scenes/WalkerEnemy.tscn")
onready var flyer_enemy_scene = preload("res://Scenes/FlyerEnemy.tscn")
onready var bomb_enemy_scene = preload("res://Scenes/BombEnemy.tscn")
onready var main_camera = get_node("/root/Level/MC/Camera2D")
var last_saved_picture_name = ""
var loaded_picture_name = ""
var can_draw = false
signal s

enum {
	WALKER,
	FLYER,
	BOMB
}

var enemy_type = WALKER

func _ready():
	image_size = Vector2(64, 64)
	#print(image_size)
	
func _input(event):
	if Input.is_action_just_pressed("left_mouse") and GameManager.in_game:
		if not enemy_spawned and not in_enemy_creator:
			enemy_spawn_position = GameManager.global_mouse_position
			open_enemy_creator()
	else:
		pass
	if Input.is_key_pressed(KEY_1):
		enemy_type = WALKER
		print("walker")
	elif Input.is_key_pressed(KEY_2):
		enemy_type = FLYER
		print("flyer")
	elif Input.is_key_pressed(KEY_3):
		enemy_type = BOMB
		print("bomb")

func _process(delta):
#	mouse_pos = tilemap.world_to_map(get_global_mouse_position() - get_viewport_transform().origin)
#	mouse_pos *= camera.zoom
	mouse_pos = tilemap.world_to_map(get_global_mouse_position())
#	print(mouse_pos)
	
	if Input.is_action_pressed("left_mouse"):
		draw_stroke(current_color)
		
	if Input.is_action_pressed("right_mouse"):
		draw_stroke(-1)
			
	if Input.is_action_just_pressed("ui_up"):
		new_color(null)
		
	if Input.is_action_just_pressed("ui_accept"):
		open_enemy_creator()
		can_paint = true

func draw_stroke(color):
	if can_paint:
		#print(color)
		tilemap.set_cellv(mouse_pos, color)
		
#func next_color():
#	if color_list.find(current_color) + 1 < color_list.size() - 1:
#		current_color = color_list.find(current_color) + 1
#	else:
#		current_color = 0
			
func new_color(color):
	if color == null:
		color = Color(rand_range(0,1), rand_range(0,1), rand_range(0,1))
	var new_tile = color_list.size()
	tileset.create_tile(new_tile)
	color_list.append(new_tile)
	tileset.tile_set_texture(new_tile, tileset.tile_get_texture(0))
	tileset.tile_set_modulate(new_tile, color)
	current_color = color_list.back()
	
func save_image(path):
	#camera.make_current()
	yield(VisualServer, "frame_post_draw")

	var img = viewport.get_texture().get_data()
	img.convert(Image.FORMAT_RGBA8)

	var cropped_image = img.get_rect(Rect2(Vector2.ZERO, image_size))
	#camera.clear_current()

	cropped_image.flip_y()
	
	var directory = Directory.new()
	
	try_to_create_dir(directory, "user://images")
	
	var DIR_PATH = "user://images/"
	if directory.dir_exists(DIR_PATH):
		print("directory exists")
		
	cropped_image.save_png(path)
	cropped_image.save_png("user://images/" + save_dialog.current_file)
	print('"user://images/' + String(save_dialog.current_file) + '"')
	last_saved_picture_name = save_dialog.current_file
	print(last_saved_picture_name)
	
	close_enemy_creator()
	spawn_enemy()
	
func load_image(path):
	loaded_picture_name = load_dialog.current_file
	print(loaded_picture_name)
	
	close_enemy_creator()
	spawn_loaded_enemy()

	pass
	
const DIR_ERROR = 'ERROR: Failed to create directory "%s". Error code %s.'

func try_to_create_dir(directory, path):
	if not directory.dir_exists(path):
		var error_code = directory.make_dir(path)
		if error_code != OK:
			printerr(DIR_ERROR % [path, error_code])
	
func get_last_saved_picture():
	return last_saved_picture
	
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
	
func spawn_loaded_enemy():	
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
	
	enemy.get_node("Sprite").texture = load_external_texture("user://images/" + loaded_picture_name)
	
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
	
func open_enemy_creator():
	enemy_spawned = false
	in_enemy_creator = true
	can_draw = true
	drawing_camera.current = true
	get_tree().paused = true
	popup.show()
	
func close_enemy_creator():
	get_tree().paused = false
	GameManager.main_camera.current = true
	in_enemy_creator = false
	can_draw = false
	popup.hide()

func _on_PaintControl_saved_image():
	close_enemy_creator()
	spawn_enemy()

func _on_ColorPicker_color_changed(color):
	new_color(color)

func _on_ColorPicker_mouse_entered():
	can_paint = false

func _on_ColorPicker_mouse_exited():
	can_paint = true

func _on_SaveButton_pressed():
	save_dialog.popup()

func _on_SaveDialog_file_selected(path):
	save_image(path)

func _on_CloseButton_pressed():
	close_enemy_creator()

func _on_LoadButton_pressed():
	load_dialog.popup()

func _on_LoadDialog_file_selected(path):
	print("selected load file")
	load_image(path)
