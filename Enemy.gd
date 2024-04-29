extends CharacterBody2D
var speed = 10
var player_chase = false
var player = null

func _on_detection_area_body_entered(body):
	player = body
	player_chase = true # Replace with function body.


func _physics_process(delta):
	if player_chase:
		velocity = (player.get_global_position() - position).normalized() * 300 * delta
	else:
		velocity = lerp(velocity, Vector2.ZERO, 0.07)
	move_and_collide(velocity)



func _on_detection_area_body_exited(body):
	player = null
	player_chase = false # Replace with function body.

func enemy():
	pass

func _on_damagehitbox_hurtbox_body_entered(body):
	pass # Replace with function body.


func _on_damagehitbox_hurtbox_body_exited(body):
	pass # Replace with function body.
