extends Line2D
var Xas 
var Yas
var angleChange
func drawing():
	add_point(get_parent().to)
	add_point(Vector2(get_parent().Xa, get_parent().Ya))

func drawingImidietly(angleChange, R):
	angleChange = get_node("../../../Container/HScrollBar").value
	Xas = round(R * cos(((angleChange ) / 180.0) * PI) + 410)
	Yas = round(R * sin(((angleChange ) / 180.0) * PI) + 350)
	remove_point(1)
	add_point(Vector2(Xas, Yas))
