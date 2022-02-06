extends KinematicBody2D
#
#var FRICTION = 10
#var gravity = 10
#var velocity = Vector2.ZERO
#var jump_force = 600
#
#export (Image) var texture
#var jumping = false
#
#var speed = 150
#var player = null
#
##onready var start_position = global_position
##onready var target_position = global_position
##onready var last_position = global_position
#
#func _physics_process(delta):
#	velocity = velocity.move_toward(Vector2.LEFT, FRICTION * delta)
#
#	#print(state)
#
#func move():
#	velocity.x = speed 
#	velocity.y += gravity
#
#	velocity = move_and_slide(velocity, Vector2.UP)
#
#func detect_hole():
#	if not hole_raycast.is_colliding() and is_on_floor():
#
#		var chance = randi() % 2
#
#		match (chance):
#			0:
#				is_moving_right = !is_moving_right
#				scale.x = -scale.x
#			1:
#				jump()
#
#func jump():
#	jumping = true
#	if is_on_floor():
#		velocity = Vector2.UP * jump_force
#
#func flip():
#	is_moving_right = !is_moving_right
#	scale.x = -scale.x
#
#func detect_wall():
#	if wall_raycast.is_colliding() and is_on_floor():
#		print("wall in front of enemy")
#		sees_wall = true
#		jump()
#		print("jump")
#	else:
#		sees_wall = false
#
#func attack_state():
#	pass
#
#func seek_player():
#	if sees_player:
#		state = CHASE
#
#func accelerate_towards_point(point, delta):
#	var direction = global_position.direction_to(point)
#	velocity = velocity.move_toward(Vector2(direction.x * speed, position.y), ACCELERATION * delta)
#	sprite.flip_h = velocity.x < 0
#
#func update_target_position():
#	var target_vector = Vector2(rand_range(-wander_range, position.y), rand_range(-wander_range, position.y))
#	target_position = start_position + target_vector
#
#func _on_Area2D_body_entered(body):
#	if body.is_in_group("MC"):
#		player = body
#		sees_player = true
#		#print("enemy sees the player!!")
#
#func _on_Area2D_body_exited(body):
#	if body.is_in_group("MC"):
#		player = null
#		sees_player = false
#		#print("enemy doesn't see the player!!")
#
#func update_wander():
#	start_wander_timer(rand_range(1, 3))
#
#func start_wander_timer(duration):
#	wander_timer.start(duration)
#
#func pick_random_state(state_list):
#	state_list.shuffle()
#	return state_list.pop_front() #pick the first random result
#
#func _on_WanderTimer_timeout():
#	#print("timeout")
#	update_target_position()
