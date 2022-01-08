extends Control
func _ready():
	$MarginContainer/VBoxContainer/startgame.grab_focus()

func _input(event):
	if event.is_action_pressed("pause"):
		get_tree().quit()

func _on_startgame_pressed():
	get_tree().change_scene("res://level1/level1.tscn")


func _on_additionalinfo_pressed():
	pass


func _on_qiutgame_pressed():
	get_tree().quit()

