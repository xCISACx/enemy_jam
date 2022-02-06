extends KinematicBody2D

var gravity = 20
var velocity = Vector2.ZERO

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.y += gravity
	
	velocity = move_and_slide(velocity, Vector2.UP)

func blow_up():
	#play blow up animation
	pass
	
func die():
	queue_free()

func _on_ImpactDetectionArea_body_entered(body):
	blow_up()
