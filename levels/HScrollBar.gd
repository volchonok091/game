extends HScrollBar
var input = value
func _ready():
	custom_step = 1.0

func _on_HScrollBar_scrolling():
	$ColorRect2/Container/RichTextLabel.set_text("Angle is: " + str(input))
