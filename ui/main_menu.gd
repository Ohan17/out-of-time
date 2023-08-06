extends Control


func _ready() -> void:
	AudioManager.play_track(3)


func _on_start_button_pressed() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($ColorRect, "color:a", 1.0, 2.0)
	tween.finished.connect(
		get_tree().change_scene_to_file.bind("res://game.tscn")
	)


func _on_exit_button_pressed() -> void:
	get_tree().quit()
