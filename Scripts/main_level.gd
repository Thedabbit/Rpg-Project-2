extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.selection_wizard == 1:
		Global.selection_wizard = 0
		$"Player 1".queue_free()
	if Global.selection_soldier == 1:
		Global.selection_soldier = 0
		$"Player 2".queue_free()


func _on_level_1_win_body_entered(_body):
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
