extends Control

@onready var language_toggle: Button = $LanguageToggle

func _ready() -> void:
	language_toggle.text = GameSettings.language.to_upper()


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://game/rooms/cutscene_one/room_cutscene_one.tscn")


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_language_toggle_pressed() -> void:
	if GameSettings.language == "de":
		GameSettings.set_language("en")
		DialogueManager.apply_language()
		language_toggle.text = "EN"
	else:
		GameSettings.set_language("de")
		DialogueManager.apply_language()
		language_toggle.text = "DE"
