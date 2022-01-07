extends Control

var notpaused = true
func _ready():
	$MarginContainer/VBoxContainer/continue.grab_focus()

func _input(event):
	if event.is_action_pressed("pause"):
		if notpaused:
			get_tree().paused = true
			notpaused = false
			visible = true
		else :
			get_tree().paused = false
			notpaused = true
			visible = false
		
func _on_continue_pressed():
	get_tree().paused = false
	notpaused = true
	visible = false
func _on_additional_info_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
