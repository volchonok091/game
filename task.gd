extends Node2D
func _ready():
	pass
func _on_Area2D_body_entered(body):
	if body.is_in_group("trans"):
		$ColorRect/RichTextLabel.set_text(str($ColorRect/StaticLine.angle))
		$transportir/Transportir.visible = false
	if  body.is_in_group("Line"):
<<<<<<< HEAD
		$lineBody.visible = false
		$ColorRect/StaticLine/answerLine.drawing()
#		$InputAngle.visible = true
		$Container.visible = true
#		if $InputAngle/MarginContainer/VBoxContainer/PanelContainer2/LineEdit.text == $ColorRect/StaticLine.angle / 2:
#			get_tree().change_scene("res://levels/level1.tscn")
			


func _on_Button_pressed():
	var Text = $Container/InputAngle/MarginContainer/VBoxContainer/PanelContainer2/LineEdit.text
	if $ColorRect/StaticLine.angle / 2 == int(Text):
		get_tree().change_scene("res://levels/level1.tscn")
=======
		$transportir/Transportir.visible = false
>>>>>>> main
