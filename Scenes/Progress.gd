extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	# get_node("Label").add_color_override("font_color", Color(1,0,0,1))
	get_node("Label").text = str(get_node("/root/Global").completed_rows) + "/" + str(get_node("/root/Global").row_total)