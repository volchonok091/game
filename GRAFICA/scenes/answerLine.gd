extends Line2D

func drawing():
	add_point(get_parent().from)
	add_point(Vector2(get_parent().Xa, get_parent().Ya))
