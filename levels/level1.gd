extends Node2D

#signal level_changed(level_name)
#
#export (String) var level_name = "level"

onready var SlownoController = $SlowmoController

# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_just_pressed("magic_slowmo_ability"):
		SlownoController.request_slowmo_change()
#		print("hello")
#		emit_signal("level_changed", level_name)
		
# warning-ignore:unused_argument
#func _on_MagicCast_pressed(delta):
#	if Input.is_action_just_pressed("magic_slowmo_ability"):
#		print("hello")
#		emit_signal("level_changed", level_name)


