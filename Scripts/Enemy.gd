extends CharacterBody2D
var speed = 10
var player_chase = false
var player = null
var attack_ip = false
var health = 100
var player_in_attack_zone = false
var damage = 0
var can_take_damage = true
func _ready():
	if Global.player_class == "wizard":
		damage = 20 
		$can_take_damage.wait_time = 3
	if Global.player_class == "soldier":
		damage = 10
		$can_take_damage.wait_time = 1
func _on_detection_area_body_entered(body):
	player = body
	player_chase = true # Replace with function body.


func _physics_process(delta):
			
	if health <= 0:
		Global.enemy_amount = Global.enemy_amount - 1
		self.queue_free()
	deal_with_damage()
	
	if player_chase:
		velocity = (player.get_global_position() - position).normalized() * 300 * delta
	else:
		velocity = lerp(velocity, Vector2.ZERO, 0.07)
	move_and_collide(velocity)



func _on_detection_area_body_exited(_body):
	player = null
	player_chase = false # Replace with function body.

func enemy():
	pass

func _on_damagehitbox_hurtbox_body_entered(body):
	if body.has_method("player"):
		player_in_attack_zone = true


func _on_damagehitbox_hurtbox_body_exited(body):
	if body.has_method("player"):
		player_in_attack_zone = false 

func deal_with_damage():
	if player_in_attack_zone and Global.player_current_attack == true:
		health = health
		
		print("slime health =", health)
		if health <= 0:
			self.queue_free()
		


func _on_can_take_damage_timeout():
	can_take_damage = true 

func on_hit():
	health  = health - damage
	print("slime health =", health)
	

func _on_enemy_hitbox_body_entered(_body):
	pass # Replace with function body.
