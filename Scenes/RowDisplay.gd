extends Label



func _ready():
	pass # Replace with function body.

func _process(delta):
	text = str(get_node("/root/Global").row_total)
