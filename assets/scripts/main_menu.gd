extends Control

@onready var actions_menu = $AllActions

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world/World.tscn")                       

func _on_exit_button_pressed() -> void:
	get_tree().quit()

func _on_actions_button_pressed() -> void:
	actions_menu.show()

func _on_back_button_pressed() -> void:
	actions_menu.hide()
