extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.selection_wizard == 1:
		Global.selection_wizard = 0
		$"Player 2".queue_free()
	if Global.selection_soldier == 1:
		Global.selection_soldier = 0
		$"Player 1".queue_free()
