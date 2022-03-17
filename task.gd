extends Node2D
func _ready():
	pass
func _on_Area2D_body_entered(body):
	if body.is_in_group("trans"):
		$ColorRect2/ColorRect/RichTextLabel.set_text("Angle is: " + str($ColorRect2/ColorRect/StaticLine.angle))
		$ColorRect2/transportir/Transportir.visible = false
	if  body.is_in_group("Line"):
		$ColorRect2/lineBody.visible = false
		$ColorRect2/ColorRect/StaticLine/answerLine.drawing()
#		$InputAngle.visible = true
		$ColorRect2/Container.visible = true
#		if $InputAngle/MarginContainer/VBoxContainer/PanelContainer2/LineEdit.text == $ColorRect/StaticLine.angle / 2:
#			get_tree().change_scene("res://levels/level1.tscn")
			


func _on_Button_pressed():
#	var Text = $ColorRect2/Container/InputAngle/MarginContainer/VBoxContainer/PanelContainer2/LineEdit.text
#	if $ColorRect2/ColorRect/StaticLine.angle / 2 == int(Text):
#		get_tree().change_scene("res://levels/level1.tscn")
#		$ColorRect2/transportir/Transportir.visible = false
	var Text = $ColorRect2/Container/HScrollBar.value
	if $ColorRect2/ColorRect/StaticLine.angle / 2 == int(Text):
		get_tree().change_scene("res://levels/level1.tscn")
		$ColorRect2/transportir/Transportir.visible = false



func _on_HScrollBar_scrolling():
	$ColorRect2/Container/Panel/RichTextLabel.set_text(str($ColorRect2/Container/HScrollBar.value))
