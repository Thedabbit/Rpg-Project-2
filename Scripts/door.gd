extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_progress_bar_value_changed(value):
	if Global.enemy_amount == 1:
		$".".queue_free()
	if Global.enemy_amount == 0:
		$"../door2".queue_free()

