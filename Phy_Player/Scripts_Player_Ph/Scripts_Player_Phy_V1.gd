extends KinematicBody2D

signal health_updated(health)
signal killed()

const Speed = 450
const Gravity = 12
const JumpVelocity = 400
const Up = Vector2(0,-1)

export (float) var max_haelth = 100

onready var health = max_haelth setget _set_health 
onready var invulnerability_timer = $InvulnerabilityTimer

var Movement = Vector2()

func _physics_process(delta):
	
	Movement = move_and_slide(Movement, Up)
	
	pass
	
func _process(delta):
	
	Movement.y += Gravity
	
	Keyboard()
	
	pass
	
func Keyboard():
	
	if Input.is_action_pressed("Move_Left"):
		Movement.x = -Speed
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("Move_Right"):
		Movement.x = Speed
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = false
	else:
		Movement.x = 0
		$AnimatedSprite.play("Idle")
		
	if is_on_floor():
		if Input.is_action_just_pressed("Jump"):
			Movement.y = -JumpVelocity
	else:
		$AnimatedSprite.play("Jump")
			
	pass
	
func damage(amount):
	if invulnerability_timer.is_stopped():
		invulnerability_timer.start()
		_set_health(health - amount)
	
	
func kill():
	pass

	
func _set_health(value):
	var prev_health = health 
	health = clamp(value, 0, max_haelth)
	if health != prev_health:
		emit_signal("healt_update", health)
		if health == 0:
			kill()








