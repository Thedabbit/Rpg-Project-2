extends Control
signal soldier_chosen


# Called when thes node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_soldier_pressed():
	Global.player_class = "soldier"
	Global.selection_soldier = 1
	get_tree().change_scene_to_file("res://scenes/main_level.tscn")
func _on_wizard_pressed():
	Global.player_class = "wizard"
	Global.selection_wizard = 1
	get_tree().change_scene_to_file("res://scenes/main_level.tscn")
