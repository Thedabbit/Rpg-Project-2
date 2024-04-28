extends Control
signal soldier_chosen


# Called when thes node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_soldier_pressed():
	Global.selection = 1
	get_tree().change_scene_to_file("res://main_level.tscn")
