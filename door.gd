extends KinematicBody2D

func _on_PlayerDetector_body_entered(body):
	$AnimationPlayer.play("dooropens")


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://level2/level2.tscn")


func _on_PlayerDetector_body_exited(body):
	$AnimationPlayer.play_backwards("dooropens")
