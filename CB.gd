extends TileMap

var tileset = preload("res://CB_tileset.tres") 
onready var viewport = get_parent()
onready var camera = get_parent().get_parent().get_node("Camera2D")
var image_size = Vector2.ZERO

var mouse_pos
var current_color = 0
var color_list = [0]
var can_paint = true

onready var save_dialog = $"../../../Control/SaveDialog"

var image_saved = false
var last_saved_picture = null

func _ready():
	image_size = Vector2(64, 64)
	print(image_size)

func _process(delta):
	mouse_pos = world_to_map(get_global_mouse_position() - get_viewport_transform().origin)
	mouse_pos *= camera.zoom
	print(mouse_pos)
	
	if Input.is_action_pressed("left_mouse"):
		draw_stroke()
		
	if Input.is_action_just_pressed("ui_right"):
		next_color()
			
	if Input.is_action_just_pressed("ui_up"):
		new_color(null)
		
	#if Input.is_action_just_pressed("ui_accept"):
		#save_image(null)

func draw_stroke():
	if can_paint:
		print("drawing")
		set_cellv(mouse_pos, current_color)
		viewport.update_worlds()
	
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
	PaintManager.last_saved_picture_name = save_dialog.current_file
	print(PaintManager.last_saved_picture_name)
	emit_signal("saved_image")

	pass
	
const DIR_ERROR = 'ERROR: Failed to create directory "%s". Error code %s.'

func try_to_create_dir(directory, path):
	if not directory.dir_exists(path):
		var error_code = directory.make_dir(path)
		if error_code != OK:
			printerr(DIR_ERROR % [path, error_code])
	
func get_last_saved_picture():
	return last_saved_picture

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
	pass # Replace with function body.
