extends Line2D
var rnd1
var rnd2
var rndto
var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	rnd1 = rng.randi_range(960,1520)
	rnd2 = rng.randi_range(0,1080)
	add_point(Vector2(960, 540))
	add_point(Vector2(rnd1,rnd2))
