extends Control


func _on_button_pressed():
	Global.health = 100
	get_tree().change_scene_to_file("res://scenes/Menu.tscn") # Replace with function body.


func _on_quit_pressed():
	Global.health = 100
	get_tree().quit() # Replace with function body.
		
