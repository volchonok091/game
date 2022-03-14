extends Node2D

onready var SlownoController = $SlowmoController

func _physics_process(delta):
	if Input.is_action_just_pressed("magic_slowmo_ability"):
		SlownoController.request_slowmo_change()
