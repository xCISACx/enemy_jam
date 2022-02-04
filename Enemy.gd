extends KinematicBody2D

var gravity = 20
var velocity = Vector2.ZERO
export var ACCELERATION = 300
export var FRICTION = 200
var jump_force = 800
onready var hole_raycast = $HoleRayCast
onready var wall_raycast = $WallRayCast
var is_moving_right = true
export (Image) var texture
var sees_player = false
onready var sprite = $Sprite
onready var animation_tree = $AnimationTree
onready var wander_timer = $WanderTimer

var jumping = false
var sees_wall = false

var state = WANDER

enum {
	IDLE,
	WANDER,
	CHASE,
	ATTACK
}

var speed = 128
var player = null

export(int) var wander_range = 12

onready var start_position = global_position
onready var target_position = global_position
onready var last_position = global_position

export var WANDER_TARGET_THRESHOLD = 4

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	animation_tree.active = true
	state = pick_random_state([IDLE, WANDER])
	#var img_texture_path := '"' + "res://Enemies/" + str(Level.last_saved_picture_name) + '"'
	#var img_texture: StreamTexture = load(img_texture_path)
	pass # Replace with function body.

func _physics_process(delta):
	
	match state:
		IDLE:
			velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
			seek_player()
			
			if wander_timer.get_time_left() == 0:
				update_wander()
		WANDER:
			seek_player()
			
			if wander_timer.get_time_left() == 0:
				update_wander()
			accelerate_towards_point(Vector2(target_position.x, position.y), delta)
			detect_wall()
			
			if global_position.distance_to(target_position) <= WANDER_TARGET_THRESHOLD:
				update_wander()
				last_position = global_position
			
			#detect_character()
			#if sees_player:
			#	state = CHASE
		CHASE:
			if player:
				#if reset_timer.is_stopped():
					#reset_timer.start()
				#if raycast_for_player() or global_position.distance_to(player.position) < 10: #if the enemy sees the player
				#	if global_position.distance_to(player.position) < 80:
				#		reset_timer.start() #stop the player reset timer
				#		state = ATTACK
				#else:
				accelerate_towards_point(Vector2(player.global_position.x, position.y), delta)
				
			else:
				seek_player()
				accelerate_towards_point(last_position, delta)
				
				if global_position.distance_to(last_position) <= 5:
					state = IDLE
		ATTACK:
			pass
			
	detect_hole()
	move()
	
	if jumping and velocity.y > 0:
		if wall_raycast.is_colliding():
			print("impossible jump")
			flip()
			jumping = false
			
	print(state)
			
func move():
	velocity.x = speed if is_moving_right else -speed
	velocity.y += gravity
	
	velocity = move_and_slide(velocity, Vector2.UP)
		
func detect_hole():
	if not hole_raycast.is_colliding() and is_on_floor():
		
		var chance = randi() % 2
		
		match (chance):
			0:
				is_moving_right = !is_moving_right
				scale.x = -scale.x
			1:
				jump()
		
func jump():
	jumping = true
	if is_on_floor():
		velocity = Vector2.UP * jump_force
		
func flip():
	is_moving_right = !is_moving_right
	scale.x = -scale.x
		
func detect_character():
	if wall_raycast.is_colliding() and is_on_floor():
		state = ATTACK
		
func detect_wall():
	if wall_raycast.is_colliding() and is_on_floor():
		print("wall in front of enemy")
		sees_wall = true
		if state == CHASE:
			jump()
			print("jump")
		else:
			flip()
			print("flip")
	else:
		sees_wall = false
		
func attack_state():
	pass
	
func seek_player():
	if sees_player:
		state = CHASE
	
func accelerate_towards_point(point, delta):
	var direction = global_position.direction_to(point)
	velocity = velocity.move_toward(direction * speed, ACCELERATION * delta)
	sprite.flip_h = velocity.x < 0
	
func update_target_position():
	var target_vector = Vector2(rand_range(-wander_range, position.y), rand_range(-wander_range, position.y))
	target_position = start_position + target_vector

func _on_Area2D_body_entered(body):
	if body.is_in_group("MC"):
		player = body
		sees_player = true
		#print("enemy sees the player!!")

func _on_Area2D_body_exited(body):
	if body.is_in_group("MC"):
		player = null
		sees_player = false
		#print("enemy doesn't see the player!!")

func update_wander():
	start_wander_timer(rand_range(1, 3))
	
func start_wander_timer(duration):
	wander_timer.start(duration)
	
func pick_random_state(state_list):
	state_list.shuffle()
	return state_list.pop_front() #pick the first random result

func _on_WanderTimer_timeout():
	print("timeout")
	update_target_position()
