extends CharacterBody2D
var bullet_scene = preload("res://Bullet.tscn")
var speed = 1000


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("Left2", "Right2", "Up2", "Down2")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_pressed("RotateL2"):
		rotation_degrees -= 5
	if Input.is_action_pressed("RotateR2"):
		rotation_degrees += 5
	if Input.is_action_just_pressed("Primary Action"):
		shoot_bullet()
	
func shoot_bullet():
	var bullet = bullet_scene.instantiate() 
	bullet.position = $Marker2D.global_position
	$"..".add_child(bullet)
	bullet.direction = Vector2.from_angle(rotation)
	bullet.rotation_degrees = rotation_degrees + 90
