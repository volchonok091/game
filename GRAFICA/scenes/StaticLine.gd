extends Line2D
var to = Vector2(410,350)
var from = Vector2(660,350)
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
var Xa
var Ya
var tornd
func _fillingArr():
	for n in range(30,182,2):
		AngleArr.push_back(n)
func _findXY():
	angle = AngleArr[rand_range(0,AngleArr.size())]
	print(angle)
	x = round(R * cos((angle / 180.0) * PI) + 410)
	y = round(R * sin((angle / 180.0) * PI) + 350)
	Xa = round(R * cos(((angle / 2) / 180.0) * PI) + 410)
	Ya = round(R * sin(((angle / 2) / 180.0) * PI) + 350)
func _drawing():
	add_point(from)
	add_point(to)
	add_point(Vector2(x,y))
func _answerLine():
	add_point(Vector2(410,350))
	add_point(Vector2(Xa,Ya))
