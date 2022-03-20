extends Control

var hearts = 2 setget set_hearts
var max_hearts = 2 setget set_max_hearts

onready var heartUIFULL = $HeartUIFull
onready var heartUIEMPTY = $HeartUIEmpty

func set_hearts(value):
	hearts = clamp(value, 0, max_hearts)
	if heartUIFULL != null:
		heartUIFULL.rect_size.x = hearts * 481
	
func set_max_hearts(value):
	max_hearts = max(value, 1)
	self.hearts = min(hearts, max_hearts)
	if heartUIEMPTY != null:
		heartUIEMPTY.rect_size.x = hearts * 481
	
func _ready():
	self.max_hearts = Playerstats.max_health
	self.hearts = Playerstats.health
	Playerstats.connect("health_changed", self, "set_hearts")
	Playerstats.connect("max_health_changed", self, "set_max_hearts")
