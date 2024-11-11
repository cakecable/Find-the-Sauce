extends Control

func _ready() -> void:
	pass

func _on_play_button_pressed() -> void:
	$ClickSound.play()
	get_tree().change_scene_to_file("res://Scenes/Game/main_game.tscn")

func _on_settings_button_pressed() -> void:
	$ClickSound.play()
	get_tree().change_scene_to_file("res://Scenes/MainMenu/settings_menu.tscn")

func _on_credits_button_pressed() -> void:
	$ClickSound.play()
