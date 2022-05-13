extends KinematicBody2D


### Automatic References Start ###
onready var _collision_shape_2d: CollisionShape2D = $CollisionShape2D
onready var _heart_u_i: Control = $HeartUI
### Automatic References Stop ###

const Speed = 450
const Gravity = 12
const JumpVelocity = 500
const Up = Vector2(0,-1)

var Movement = Vector2()
var buttonIsPressed = 0

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
		$AnimationPlayer.play("Attac_Right")
		yield(get_tree().create_timer(1.9), "timeout")
#		get_tree().change_scene("res://GRAFICA/scenes/task.tscn")
	else:pass


func Keyboard():

	if Input.is_action_pressed("Move_Left") and not Input.is_action_just_pressed("magick"):
		Movement.x = -Speed
		$AnimationPlayer.play("Run")
		if is_on_floor():
			if Input.is_action_just_pressed("Jump") and Input.is_action_pressed("Move_Left") and not Input.is_action_just_pressed("magick"):
				Movement.y = -JumpVelocity
		else:
				$AnimationPlayer.play("Jump")
	elif Input.is_action_pressed("Move_Right") and not Input.is_action_just_pressed("magick"):
		Movement.x = Speed
		$AnimationPlayer.play("Run_Right")
		if is_on_floor():
			if Input.is_action_just_pressed("Jump") and Input.is_action_pressed("Move_Right") and not Input.is_action_just_pressed("magick"):
				Movement.y = -JumpVelocity
		else:
				$AnimationPlayer.play("Jump_Right")
	if not Input.is_action_pressed("magick") and not Input.is_action_pressed("Move_Right") and not Input.is_action_pressed("Move_Left") :
			Movement.x = 0
			$AnimationPlayer.play("Idle_right")
	if is_on_floor():
			if Input.is_action_just_pressed("Jump") and not Input.is_action_pressed("Move_Right") and not Input.is_action_pressed("Move_Left"):
				Movement.y = -JumpVelocity
				$AnimationPlayer.play("Jump_Right")	
	pass
	
	

		
	
func _on_Hurtbox_area_entered(area):
	stats.health -= 1




func _on_Attack_area_entered(area):
	pass
