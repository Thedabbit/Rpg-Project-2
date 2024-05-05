extends CharacterBody2D 
var bullet_scene = preload("res://scenes/Bullet.tscn")
var speed = 1000
var can_shoot = true
var enemy_inattack_range = false
var enemy_attack_cooldown = true
var health = 100
var player_alive = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var direction = Input.get_vector("Left1", "Right1", "Up1", "Down1")
	velocity = direction * speed
	move_and_slide()
	
	
	if health <= 0:
		player_alive = false
	if player_alive == false:
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	if Input.is_action_pressed("RotateL1"):
		rotation_degrees -= 5
	if Input.is_action_pressed("RotateR1"):
		rotation_degrees += 5
	if Input.is_action_just_pressed("Primary Action") and can_shoot == true:
		can_shoot = false
		$Timer.start()
		shoot_bullet()
func _physics_process(delta):
	enemy_attack()
	
	
func shoot_bullet():
	var bullet = bullet_scene.instantiate() 
	bullet.position = $Marker2D2.global_position
	$"..".add_child(bullet)
	bullet.direction = Vector2.from_angle(rotation)
	bullet.rotation_degrees = rotation_degrees + 90


func _on_timer_timeout():
	can_shoot = true




func enemy_attack():
	if enemy_inattack_range and enemy_attack_cooldown == true:
		health = health - 20
		enemy_attack_cooldown = false
		$attack_cooldown.start()
		print("player health = ", health)
		
		

func _on_player_1_hitbox_body_exited(body):
	if body.has_method("enemy"):
		enemy_inattack_range = false
	 # Replace with function body.


func _on_attack_cooldown_timeout():
	enemy_attack_cooldown = true # Replace with function body.




func _on_player_1_hitbox_body_entered(body):
	if body.has_method("enemy"):
		enemy_inattack_range = true # Replace with function body.
