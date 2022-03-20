extends KinematicBody2D

const Speed = 450
const Gravity = 12
const JumpVelocity = 500
const Up = Vector2(0,-1)

var Movement = Vector2()

var stats = Playerstats

func _ready():
	stats.connect("no_health",self, "queue_free")

func _physics_process(delta):
	
	Movement = move_and_slide(Movement, Up)
	
	pass
	
func _process(delta):
	
	Movement.y += Gravity
	
	Keyboard()
	
	Magic_Attack()
	
	pass
	
func Magic_Attack():
	if Input.is_action_just_pressed("magick"):
		$AnimationPlayer.play("Attac")
		yield(get_tree().create_timer(1.9), "timeout")
	else:pass


func Keyboard():
	
	#if Input.is_action_just_pressed("magic_slowmo_ability"):
		#$AnimationPlayer.play("Attac")
		#print("start")
		#yield(get_tree().create_timer(1.9), "timeout")
		#print("end")
			
	#else:pass
	
	if Input.is_action_pressed("Move_Left"):
		if Input.is_action_just_pressed("Move_Left") and not scale.x < 0:
			scale.x = -0.2
		else:pass
		Movement.x = -Speed
		$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("Move_Right"):
		if Input.is_action_just_pressed("Move_Right") and not scale.x > 0:
			scale.x = -scale.x
		else:pass
		Movement.x = Speed
		$AnimationPlayer.play("Run")
	elif not Input.is_action_pressed("magick"):
		Movement.x = 0
		$AnimationPlayer.play("Idle")
		
	if is_on_floor():
		if Input.is_action_just_pressed("Jump"):
			Movement.y = -JumpVelocity
	else:
		$AnimationPlayer.play("Jump")


		
	pass
		
	
func _on_Hurtbox_area_entered(area):
	stats.health -= 1




func _on_Attack_area_entered(area):
	pass
