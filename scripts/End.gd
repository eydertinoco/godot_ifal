extends Area2D

var is_active = false



func _on_body_entered(body):
	if (Globals.frutas == 4):
		get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
