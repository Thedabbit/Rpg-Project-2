extends CharacterBody2D

var speed = 1000


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("Left1", "Right1", "Up1", "Down1")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_pressed("RotateL1"):
		rotation_degrees -= 5
	if Input.is_action_pressed("RotateR1"):
		rotation_degrees += 5
