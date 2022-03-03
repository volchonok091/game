extends Node2D
var from = Vector2(960,540)
var to = Vector2(960,240)
var col = Color(255,255,255)
func _ready():
	randomize()
	_fillingArr()
	_findXY()
	print(AngleArr)
	print(angle)
	print(x)
	print(y)
var AngleArr = Array()
var n
var R = 400
var angle
var x
var y
var tornd
func _fillingArr():
	for n in range(30,182,2):
		AngleArr.push_back(n)
func _findXY():
	angle = AngleArr[rand_range(0,AngleArr.size())]
	x = R * cos(angle)
	y = R * sin(angle)
func _draw():
	tornd = Vector2(x,y)
	draw_line(from,to,col)
	draw_line(from,tornd,col)
