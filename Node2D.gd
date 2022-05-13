extends Node 

onready var current_level = $Node2D

func _ready() -> void:
	current_level.connect("level_changed", self, "handle_level_changed")

func handle_level_changed(current_level_name: String):
	var next_level
	var next_level_name: String
	
	match current_level_name:
		"first":
			next_level_name = "task"
		"magic":
			next_level_name = "level1"
		_:
			return
	
	next_level = load("res://levels/" + next_level_name + ".tscn").instance()
	add_child(next_level)
	next_level.connect("level_changed", self, "handle_level_changed")
	current_level.queue_free()
	current_level = next_level
	transfer_data_between_scenes(current_level, next_level)
	
func transfer_data_between_scenes(old_scene, new_scene):
	pass

