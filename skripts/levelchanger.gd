extends Area2D
export(String, FILE) var NEXT_LEVEL: String = ""

func _on_playerdetecror_body_entered(body):
	$KinematicBody2D/AnimationPlayer.play("opens")


func _on_playerdetecror_body_exited(body):
	$KinematicBody2D/AnimationPlayer.play_backwards("opens")


func _on_transfering_body_entered(body):
	if body.is_in_group("Player") and NEXT_LEVEL != "":
		get_tree().change_scene(NEXT_LEVEL)
