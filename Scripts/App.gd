extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("/root/Global").update_colors == true:
		get_node("/root/Global").update_colors = false
		
		get_node("Background/BackgroundRectangle").color = Color(get_node("/root/Global").r_b, get_node("/root/Global").g_b, get_node("/root/Global").b_b, 1)
		
		ChangeTextColors(self)


func StitchIncrease():
	get_node("/root/Global").current_stitch_count += get_node("/root/Global").stitch_delta
	get_node("/root/Global").CheckRowProgress()


func StitchDecrease():
	if (get_node("/root/Global").current_stitch_count > 0):
		get_node("/root/Global").current_stitch_count -= get_node("/root/Global").stitch_delta
	
func ChangeTextColors(node):
	for n in node.get_children():
		if n.get_class() == "Label" or n.get_class() == "LineEdit":
			n.add_color_override("font_color", Color(get_node("/root/Global").r_t, get_node("/root/Global").g_t, get_node("/root/Global").b_t, 1))
		if n.get_children().size() > 0:
			ChangeTextColors(n)
