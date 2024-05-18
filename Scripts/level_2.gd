extends Node2D

func _ready():
	pass

func _process(_delta):
	if Global.player_class == "wizard":
		$"Player 1".position.x += 100000
	if Global.player_class == "soldier":
		$"Player 2".position.x += 100000


func _on_level_1_win_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/level_3.tscn") # Replace with function body.
