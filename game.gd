extends Node


var _dialogic: Node


func _ready() -> void:
	AudioManager.play_track(4)
	_dialogic = Dialogic.start("timeline_1")
	$ColorRect.show()


func flashback() -> void:
	$ColorRect.queue_free()
	_dialogic.get_node("%Animations").disconnect_new_text_animation()


func play_good_end_track() -> void:
	AudioManager.play_track(3)


func show_ash_sprite() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($Ash, "self_modulate:a", 1.0, 1.0)


func show_kylian_sprite() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($Kylian, "self_modulate:a", 1.0, 1.0)


func hide_all() -> void:
	var tween: Tween = create_tween().set_parallel()
	tween.tween_property($Ash, "self_modulate:a", 0.0, 1.0)
	tween.tween_property($Kylian, "self_modulate:a", 0.0, 1.0)


func good_ending() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($GoodEnding, "self_modulate:a", 1.0, 5)


func bad_ending() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($BadEnding, "self_modulate:a", 1.0, 5)


func to_main_menu() -> void:
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
