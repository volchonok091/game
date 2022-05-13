extends Node2D

signal level_changed(level_name)

export (String) var level_name = "level"

onready var SlownoController = $SlowmoController

var temporaryCordinates
var notpausedd = true
var disabled = true 
func _ready():
	visible = false
	$Area2D/CollisionShape2D.disabled=true
	pass

func _on_Area2D_script_changed():
	CollisionShape2D.set_deffered("visible", false)
	pass
	
	
func _input(event):
	if event.is_action_pressed("magic_slowmo_ability"):
		if notpausedd:
			yield(get_tree().create_timer(0.1), "timeout")
##			get_tree().change_scene("res://GRAFICA/scenes/task.tscn")
#			get_tree().paused = true
			notpausedd = false
			visible = true
#			yield(get_tree().create_timer(45), "timeout")
		else :
			get_tree().paused = false
			notpausedd = true
			visible = false
		if Input.is_action_pressed("magic_slowmo_ability"):
			get_tree().paused = false
			notpausedd = true
			visible = false

##func _Keyboard(event):
##	if Input.is_action_pressed("magic_slowmo_ability"):
##		get_tree().paused = false
##		notpausedd = true
##		visible = false
#func _on_MagicCast_pressed() -> void:
#	if Input.is_action_pressed("magic_slowmo_ability"):
#		emit_signal("level_changed", level_name)

func _on_Area2D_body_entered(body):
	if body.is_in_group("trans"):
		$ColorRect2/ColorRect/RichTextLabel.set_text("Angle is: " + str($ColorRect2/ColorRect/StaticLine.angle))
		$ColorRect2/transportir/Transportir.visible = false
	if  body.is_in_group("Line"):
		$ColorRect2/lineBody.visible = false
#		$InputAngle.visible = true
		$ColorRect2/Container.visible = true
		$ColorRect2
		$ColorRect2/ColorRect/StaticLine/answerLine.drawing()
#		if $InputAngle/MarginContainer/VBoxContainer/PanelContainer2/LineEdit.text == $ColorRect/StaticLine.angle / 2:
#			get_tree().change_scene("res://levels/level1.tscn")
			


func _on_Button_pressed():
	var Text = $ColorRect2/Container/HScrollBar.value
	if $ColorRect2/ColorRect/StaticLine.angle / 2 == Text:
		$ColorRect2/transportir/Transportir.visible = false
		SlownoController.request_slowmo_change()
		visible = false
		$Area2D/CollisionShape2D.disabled=true
#		get_tree().reload_scene("res://levels/task.tscn")
#		emit_signal("level_changed", level_name)
	else: 
		$Area2D/CollisionShape2D.disabled=false 
		yield(get_tree().create_timer(0.1), "timeout")
		$Area2D/CollisionShape2D.disabled=true
#		$Area2D/CollisionShape2D.disabled=true
#$		get_tree().reload_scene("res://levels/task.tscn")
#		disabled 



func _on_HScrollBar_scrolling():
	temporaryCordinates = $ColorRect2/Container/HScrollBar.value
	$ColorRect2/Container/Panel/RichTextLabel.set_text(str($ColorRect2/Container/HScrollBar.value))
	$ColorRect2/ColorRect/StaticLine/answerLine.drawingImidietly(temporaryCordinates + 10,$ColorRect2/ColorRect/StaticLine.R )
	

	


func _on_Area2D_input_event(viewport, event, shape_idx):
	pass # Replace with function body.


