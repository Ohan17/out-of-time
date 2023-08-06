extends CanvasLayer


var paused: bool:
	set(value):
		paused = value
		get_tree().paused = value
		visible = value


func _ready() -> void:
	paused = false


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("esc"):
		paused = !paused


func _on_continue_button_pressed() -> void:
	paused = false


func _on_button_pressed() -> void:
	paused = false
	Dialogic.end_timeline()
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
