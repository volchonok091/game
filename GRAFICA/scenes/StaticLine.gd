extends Line2D
var from = Vector2(410,350)
var to = Vector2(410,100)
func _ready():
	randomize()
	_fillingArr()
	_findXY()
	_drawing()
var AngleArr = Array()
var n
var R = 250
var angle
var x
var y
var tornd
func _fillingArr():
	for n in range(30,182,2):
		AngleArr.push_back(n)
func _findXY():
	angle = AngleArr[rand_range(0,AngleArr.size())]
	x = R * cos(angle) + 410
	y = R * sin(angle) + 350
func _drawing():
	add_point(to)
	add_point(from)
	add_point(Vector2(x,y))
