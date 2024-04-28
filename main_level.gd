extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.selection == 1:
		Global.selection = 0
		$"Player 1".queue_free()


func _on_character_select_menu_soldier_chosen():
	print("hello")
	print(get_tree())
	get_tree().change_scene_to_file("res://main_level.tscn") # Replace with function body.
	print(get_tree())
