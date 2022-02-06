extends KinematicBody2D

var gravity = 10
var velocity = Vector2.ZERO
onready var hole_raycast = $HoleRayCast
onready var wall_raycast = $WallRayCast
onready var enemy_raycast = $EnemyRayCast
var is_moving_right = true
export (Image) var texture

var speed = 128
var sees_hole = false
var sees_wall = false
var grounded = false
var jump_force = 350
var jumping = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	get_node("Camera2D").current = true
	#var img_texture_path := '"' + "res://Enemies/" + str(Level.last_saved_picture_name) + '"'
	#var img_texture: StreamTexture = load(img_texture_path)
	pass # Replace with function body.

func _physics_process(delta):
	move()
	detect_hole()
	if sees_hole:
		jump()
	detect_wall()
	detect_enemy()
	
	grounded = is_on_floor()
		
	if jumping and velocity.y > 0:
		if wall_raycast.is_colliding():
			print("impossible jump")
			flip()
			jumping = false
	#print(sees_hole)
	
func move():
	velocity.x = speed if is_moving_right else -speed
	velocity.y += gravity
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
func detect_hole():
	if not hole_raycast.is_colliding() and is_on_floor():
		sees_hole = true
	else:
		sees_hole = false
		
func jump():
	jumping = true
	if grounded:
		velocity = Vector2.UP * jump_force
		
func flip():
	is_moving_right = !is_moving_right
	scale.x = -scale.x
	
func detect_enemy():
	if self.enemy_raycast.is_colliding() and is_on_floor():
		var chance = randi() % 2
		
		randomize()
		match chance:
			0:
				self.jump()
			1:
				#npc attacks
				self.flip()
				
func attack():
	$AnimationPlayer.play("Attack")
		
func detect_wall():
	if wall_raycast.is_colliding() and is_on_floor():
		print("wall in front of npc")
		sees_wall = true
		jump()
	else:
		sees_wall = false
	#elif wall_raycast.is_colliding() and not hole_raycast.is_colliding() and is_on_floor():
		#flip()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func die():
	queue_free()

func _on_HurtBox_body_entered(body):
	queue_free()

func _on_HitBox_body_entered(body):
	if body.is_in_group("Enemy"):
		attack()
		body.die()

func _on_HurtBox_area_entered(area):
	if area.is_in_group("Enemy"):
		queue_free()
