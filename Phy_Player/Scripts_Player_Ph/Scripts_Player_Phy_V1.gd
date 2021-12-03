extends KinematicBody2D

const Speed = 200
const Gravity = 12
const JumpVelocity = 400
const Up = Vector2(0,-1)

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
	
