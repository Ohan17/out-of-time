extends Node2D


var _dialogic: Node


func _ready() -> void:
	_dialogic = Dialogic.start("timeline_1")


func flashback() -> void:
	$ColorRect.queue_free()
	_dialogic.get_node("%Animations").disconnect_new_text_animation()
