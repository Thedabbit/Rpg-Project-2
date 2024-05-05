extends Area2D
var direction = Vector2(0, 0)

@export var speed = 25
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direction * speed
	speed += 0.01


func _on_body_entered(body):
	if "on_hit" in body:
		body.on_hit()
 # Replace with function body.

