extends Node2D
func _ready():
	pass
func _on_Area2D_body_entered(body):
	if body.is_in_group("trans"):
		$ColorRect/RichTextLabel.set_text(str($ColorRect/StaticLine.angle))
		$transportir/Transportir.visible = false
	if  body.is_in_group("Line"):
		$transportir/Transportir.visible = false
