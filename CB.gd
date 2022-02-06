extends TileMap

var tileset = preload("res://CB_tileset.tres") 
onready var camera = $Camera2D
var image_size = Vector2.ZERO

var mouse_pos
var current_color = 0
var color_list = [0]
var can_paint = true

func _ready():
	image_size = camera.get_viewport_rect().size
	print(image_size)

func _process(delta):
	mouse_pos = world_to_map(get_global_mouse_position())
	
	if Input.is_action_pressed("left_mouse"):
		draw_stroke()
		
	if Input.is_action_just_pressed("ui_right"):
		next_color()
			
	if Input.is_action_just_pressed("ui_up"):
		new_color(null)
		
	if Input.is_action_just_pressed("ui_accept"):
		save_image()

func draw_stroke():
	if can_paint:
		set_cellv(mouse_pos, current_color)
	
func next_color():
	if color_list.find(current_color) + 1 < color_list.size() - 1:
		current_color = color_list.find(current_color) + 1
	else:
		current_color = 0
			
func new_color(color):
	if color == null:
		color = Color(rand_range(0,1), rand_range(0,1), rand_range(0,1), rand_range(0,1))
	var new_tile = color_list.size()
	tileset.create_tile(new_tile)
	color_list.append(new_tile)
	tileset.tile_set_texture(new_tile, tileset.tile_get_texture(0))
	tileset.tile_set_modulate(new_tile, color)
	current_color = color_list.back()
	
func save_image():
	camera.make_current()
	yield(VisualServer, "frame_post_draw")

	var img = camera.get_viewport().get_texture().get_data()
	img.convert(Image.FORMAT_RGBA8)
	
	var cropped_image = img.get_rect(Rect2(camera.get_camera_position(), image_size))
	camera.clear_current()
	
	cropped_image.flip_y()
	cropped_image.resize(64, 64)
	cropped_image.save_png("user://images/" + "drawing.png")
	print(cropped_image.save_png("user://images/" + "drawing.png"))
	print(cropped_image)
	
func _on_ColorPicker_ready():
	pass # Replace with function body.


func _on_ColorPicker_color_changed(color):
	new_color(color)


func _on_ColorPicker_preset_added(color):
	pass # Replace with function body.


func _on_ColorPicker_preset_removed(color):
	pass # Replace with function body.


func _on_ColorPicker_mouse_entered():
	can_paint = false


func _on_ColorPicker_mouse_exited():
	can_paint = true
