extends Area2D
var direction = Vector2(0, 0)
@export var speed = 0.01
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direction * speed
	speed += 0.3



func _on_hitbox_area_entered(area):
	Global.enemy_hit = 1
	self.queue_free()
 # Replace with function body.


func _on_hitbox_body_entered(body):
	if  body.has_method("target"):
		self.queue_free() # Replace with function body.


func _on_hitbox_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	self.queue_free() # Replace with function body.


func _on_hitbox_body_exited(body):
	Global.enemy_hit = true
	self.queue_free() # Replace with function body.


func _on_hitbox_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.enemy_hit = true
	self.queue_free() # Replace with function body.


func _on_body_entered(body):
	if "on_hit" in body:
		body.on_hit()
