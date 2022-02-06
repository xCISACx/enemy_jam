extends KinematicBody2D

var gravity = 10
var velocity = Vector2.ZERO
export var ACCELERATION = 300
export var FRICTION = 200
var jump_force = 600
onready var hole_raycast = $HoleRayCast
onready var wall_raycast = $WallRayCast
var is_moving_left = true
export (Image) var texture
var sees_player = false
onready var sprite = $Sprite
onready var animation_tree = $AnimationTree
onready var wander_timer = $WanderTimer
onready var raycast = $RayCast2D

var jumping = false
var sees_wall = false

var state = WANDER

enum {
	IDLE,
	WANDER,
	CHASE,
	ATTACK
}

var speed = 150
var player = null

export(int) var wander_range = 12

onready var start_position = global_position
onready var target_position = global_position
onready var last_position = global_position

func _ready():
	animation_tree.active = true

func _physics_process(delta):
	velocity = velocity.move_toward(Vector2.LEFT, FRICTION * delta)
	move()
#	if jumping and velocity.y > 0:
#		if wall_raycast.is_colliding():
#			#print("impossible jump")
#			flip()
#			jumping = false
			
func move():
	velocity.x = -speed if is_moving_left else speed
	velocity.y += gravity
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if is_on_wall() and is_on_floor():
		jump()
		if wander_timer.is_stopped():
			start_wander_timer(jump_force/200)
			
	if is_on_floor() and !raycast.is_colliding():
		flip()
		
func jump():
	jumping = true
	if is_on_floor():
		velocity = Vector2.UP * jump_force
		
func flip():
	is_moving_left = !is_moving_left
	scale.x = -scale.x
		
func attack_state():
	pass
	
func accelerate_towards_point(point, delta):
	var direction = global_position.direction_to(point)
	velocity = velocity.move_toward(Vector2(direction.x * speed, position.y), ACCELERATION * delta)
	sprite.flip_h = velocity.x < 0

func start_wander_timer(duration):
	wander_timer.start(duration)
	
func die():
	queue_free()

func _on_WanderTimer_timeout():
	flip()

func _on_HurtBox_area_entered(area):
	if area.is_in_group("MC"):
		die()

func _on_HitBox_body_entered(body):
	if body.is_in_group("MC"):
		body.die()
