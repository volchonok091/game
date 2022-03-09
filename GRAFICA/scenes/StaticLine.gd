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
var tornd
func _fillingArr():
	for n in range(30,182,2):
		AngleArr.push_back(n)
func _findXY():
	angle = AngleArr[rand_range(0,AngleArr.size())]
	x = round(R * cos((angle/180.0) * 3.14) + 410)
	y = round(R * -sin((angle/180.0) * 3.14) + 350)
	print(x)
	print(y)
	print(angle)
	print(cos(angle))
	print(sin(angle))
	print(cos((angle/180)) * PI)
	print(cos(PI))
	print(sin((angle/180)) * PI)
	print((angle/180.0) * PI)
func _drawing():
	add_point(from)
	add_point(to)
	add_point(Vector2(x,y))
