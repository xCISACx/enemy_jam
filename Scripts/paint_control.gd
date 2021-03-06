extends Control

# A constant for whether or not we're needing to undo a shape.
const UNDO_MODE_SHAPE = -2
# A constant for whether or not we can undo.
const UNDO_NONE = -1
# How large is the image (it's actually the size of DrawingAreaBG, because that's our background canvas).
const IMAGE_SIZE = Vector2(720, 720)

onready var view_port = get_parent()
# Enums for the various modes and brush shapes that can be applied.
enum BrushModes {
	PENCIL
}

enum BrushShapes {
	RECTANGLE,
	CIRCLE,
}

# The top-left position of the canvas.
var TL_node

# A list to hold all of the dictionaries that make up each brush.
var brush_data_list = []

# A boolean to hold whether or not the mouse is inside the drawing area, the mouse position last _process call
# and the position of the mouse when the left mouse button was pressed.
var is_mouse_in_drawing_area = false
var last_mouse_pos = Vector2()
var mouse_click_start_pos = null

# A boolean to tell whether we've set undo_elements_list_num, which holds the size of draw_elements_list
# before a new stroke is added (unless the current brush mode is 'rectangle shape' or 'circle shape', in
# which case we do things a litte differently. See the undo_stroke function for more details).
var undo_set = false
var undo_element_list_num = -1

# The current brush settings: The mode, size, color, and shape we have currently selected.
var brush_mode = BrushModes.PENCIL
var brush_size = 32
var brush_color = Color.black
var brush_shape = BrushShapes.CIRCLE;

var image_saved = false
var last_saved_picture = null
var last_saved_picture_path

onready var save_dialog = $"../../../SaveFileDialog"

signal saved_image
signal _on_CloseButton_pressed

func _ready():
	# Get the top left position node. We need this to find out whether or not the mouse is inside the canvas.
	TL_node = get_node("TLPos")
	connect("saved_image", PaintManager, "_on_PaintControl_saved_image")
	connect("_on_CloseButton_pressed", PaintManager, "close_enemy_creator")
	image_saved = false


func _process(_delta):
	var mouse_pos = get_global_mouse_position()

	# Check if the mouse is currently inside the canvas/drawing-area.
	is_mouse_in_drawing_area = false
	if PaintManager.can_draw:
		if mouse_pos.x > TL_node.global_position.x:
			if mouse_pos.y > TL_node.global_position.y:
				is_mouse_in_drawing_area = true

	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		# If we do not have a position for when the mouse was first clicked, then this must
		# be the first time is_mouse_button_pressed has been called since the mouse button was
		# released, so we need to store the position.
		if mouse_click_start_pos == null:
			mouse_click_start_pos = mouse_pos

		# If the mouse is inside the canvas and the mouse is 1px away from the position of the mouse last _process call.
		if check_if_mouse_is_inside_canvas():
			if mouse_pos.distance_to(last_mouse_pos) >= 1:
				# If we are in pencil or eraser mode, then we need to draw.
				if brush_mode == BrushModes.PENCIL or brush_mode == BrushModes.ERASER:
					# If undo has not been set, meaning we've started a new stroke, then store the size of the
					# draw_elements_list so we can undo from this point in time.
					if undo_set == false:
						undo_set = true
						undo_element_list_num = brush_data_list.size()
					# Add the brush object to draw_elements_array.
					add_brush(mouse_pos, brush_mode)

	else:
		# We've finished our stroke, so we can set a new undo (if a new storke is made).
		undo_set = false

	# Store mouse_pos as last_mouse_pos now that we're done with _process.
	last_mouse_pos = mouse_pos
	#print(is_mouse_in_drawing_area)
	#print("paint_control process 0")


func check_if_mouse_is_inside_canvas():

	if is_mouse_in_drawing_area:
		return true
	return false


func undo_stroke():
	# Only undo a stroke if we have one.
	if undo_element_list_num == UNDO_NONE:
		return

	# If we are undoing a shape, then we can just remove the latest brush.
	if undo_element_list_num == UNDO_MODE_SHAPE:
		if brush_data_list.size() > 0:
			brush_data_list.remove(brush_data_list.size() - 1)

		# Now that we've undone a shape, we cannot undo again until another stoke is added.
		undo_element_list_num = UNDO_NONE
		# NOTE: if we only had shape brushes, then we could remove the above line and could let the user
		# undo until we have a empty element list.

	# Otherwise we're removing a either a pencil stroke or a eraser stroke.
	else:
		# Figure out how many elements/brushes we've added in the last stroke.
		var elements_to_remove = brush_data_list.size() - undo_element_list_num
		# Remove all of the elements we've added this in the last stroke.
		#warning-ignore:unused_variable
		for elment_num in range(0, elements_to_remove):
			brush_data_list.pop_back()

		# Now that we've undone a stoke, we cannot undo again until another stoke is added.
		undo_element_list_num = UNDO_NONE

	# Redraw the brushes
	update()


func add_brush(mouse_pos, type):
	# Make new brush dictionary that will hold all of the data we need for the brush.
	var new_brush = {}

	# Populate the dictionary with values based on the global brush variables.
	# We will override these as needed if the brush is a rectange or circle.
	new_brush.brush_type = type
	new_brush.brush_pos = mouse_pos
	new_brush.brush_shape = brush_shape
	new_brush.brush_size = brush_size
	new_brush.brush_color = brush_color

	# Add the brush and update/draw all of the brushes.
	brush_data_list.append(new_brush)
	update()


func _draw():
	# Go through all of the brushes in brush_data_list.
	for brush in brush_data_list:
		match brush.brush_type:
			BrushModes.PENCIL:
				# If the brush shape is a rectangle, then we need to make a Rect2 so we can use draw_rect.
				# Draw_rect draws a rectagle at the top left corner, using the scale for the size.
				# So we offset the position by half of the brush size so the rectangle's center is at mouse position.
				if brush.brush_shape == BrushShapes.RECTANGLE:
					var rect = Rect2(brush.brush_pos - Vector2(brush.brush_size / 2, brush.brush_size / 2), Vector2(brush.brush_size, brush.brush_size))
					draw_rect(rect, brush.brush_color)
				# If the brush shape is a circle, then we draw a circle at the mouse position,
				# making the radius half of brush size (so the circle is brush size pixels in diameter).
				elif brush.brush_shape == BrushShapes.CIRCLE:
					draw_circle(brush.brush_pos, brush.brush_size / 2, brush.brush_color)


func save_picture(path):
	# Wait until the frame has finished before getting the texture.
	yield(VisualServer, "frame_post_draw")

	var img = view_port.get_texture().get_data()
	img.convert(Image.FORMAT_RGBA8)
	
	var cropped_image = img.get_rect(Rect2(TL_node.global_position, IMAGE_SIZE))
	
	cropped_image.flip_y()
	cropped_image.resize(64, 64)
	
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
	
const DIR_ERROR = 'ERROR: Failed to create directory "%s". Error code %s.'

func try_to_create_dir(directory, path):
	if not directory.dir_exists(path):
		var error_code = directory.make_dir(path)
		if error_code != OK:
			printerr(DIR_ERROR % [path, error_code])
	
func get_last_saved_picture():
	return last_saved_picture
	
func get_last_saved_picture_path():
	return last_saved_picture_path

func _on_CloseButton_pressed():
	emit_signal("_on_CloseButton_pressed")
	print("close")
