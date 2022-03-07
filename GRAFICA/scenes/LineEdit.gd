extends LineEdit

func _ready():
	grab_focus()
	max_length = 3

func _on_LineEdit_text_entered(new_text):
	var Text = text

