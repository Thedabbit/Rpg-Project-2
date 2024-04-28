extends Control
signal soldier_chosen


# Called when thes node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_soldier_pressed():
	Global.selection_soldier = 1
	get_tree().change_scene_to_file("main_level.tscn")
func _on_wizard_pressed():
	Global.selection_wizard = 1
	get_tree().change_scene_to_file("main_level.tscn")
