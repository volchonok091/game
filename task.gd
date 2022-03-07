extends Node2D
func _ready():
	$lineBody.visible = false
	$transportir.visible = true
func _on_Area2D_body_entered(body):
	if body.is_in_group("trans"):
		$ColorRect/RichTextLabel.set_text(str($ColorRect/StaticLine.angle))
		$transportir/Transportir.visible = false
		$lineBody.visible = true
	if  body.is_in_group("Line"):
		$lineBody.visible = false
		$ColorRect/StaticLine/answerLine.drawing()
		$InputAngle.visible = true
