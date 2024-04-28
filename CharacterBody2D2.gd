extends CharacterBody2D 
var bullet_scene = preload("res://Bullet.tscn")
var speed = 1000
var can_shoot = true
var bullet_shot = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ($Timer.get_time_left() > 0):
		can_shoot = false
	else:
		can_shoot = true
	if Input.is_action_just_pressed("Primary Action"):
		bullet_shot = true
	var direction = Input.get_vector("Left2", "Right2", "Up2", "Down2")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_pressed("RotateL2"):
		rotation_degrees -= 5
	if Input.is_action_pressed("RotateR2"):
		rotation_degrees += 5
	if Input.is_action_just_pressed("Primary Action") and can_shoot == true:
		shoot_bullet()
	
	
func shoot_bullet():
	var bullet = bullet_scene.instantiate() 
	bullet.position = $Marker2D2.global_position
	$"..".add_child(bullet)
	bullet.direction = Vector2.from_angle(rotation)
	bullet.rotation_degrees = rotation_degrees + 90


func _on_timer_timeout():
	can_shoot = true
	await get_tree().create_timer(5.0).timeout
	bullet_shot = false
 # Replace with function body.
