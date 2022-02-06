extends KinematicBody2D

var gravity = 10
var velocity = Vector2.ZERO
export var ACCELERATION = 300
export var FRICTION = 200
onready var wall_raycast = $WallRayCast
var is_moving_left = true
export (Image) var texture
onready var sprite = $Sprite
onready var animation_tree = $AnimationTree
var speed = 150

func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	move()
	
func move():
	velocity.x = -speed if is_moving_left else speed
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
func die():
	queue_free()
	
func _on_HitBox_body_entered(body):
	if body.is_in_group("MC"):
		body.queue_free()


func _on_HurtBox_area_entered(area):
	if area.is_in_group("MC"):
		area.die()
