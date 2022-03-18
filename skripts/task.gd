extends Node2D
var temporaryCordinates
func _ready():
	pass
func _on_Area2D_body_entered(body):
	if body.is_in_group("trans"):
		$ColorRect2/ColorRect/RichTextLabel.set_text("Angle is: " + str($ColorRect2/ColorRect/StaticLine.angle))
		$ColorRect2/transportir/Transportir.visible = false
	if  body.is_in_group("Line"):
		$ColorRect2/lineBody.visible = false
#		$InputAngle.visible = true
		$ColorRect2/Container.visible = true
		$ColorRect2/ColorRect/StaticLine/answerLine.drawing()
#		if $InputAngle/MarginContainer/VBoxContainer/PanelContainer2/LineEdit.text == $ColorRect/StaticLine.angle / 2:
#			get_tree().change_scene("res://levels/level1.tscn")
			


func _on_Button_pressed():
	var Text = $ColorRect2/Container/HScrollBar.value
	if $ColorRect2/ColorRect/StaticLine.angle / 2 == Text:
		get_tree().change_scene("res://levels/level1.tscn")
		$ColorRect2/transportir/Transportir.visible = false



func _on_HScrollBar_scrolling():
	temporaryCordinates = $ColorRect2/Container/HScrollBar.value
	$ColorRect2/Container/Panel/RichTextLabel.set_text(str($ColorRect2/Container/HScrollBar.value))
	$ColorRect2/ColorRect/StaticLine/answerLine.drawingImidietly(temporaryCordinates + 10,$ColorRect2/ColorRect/StaticLine.R )
	
