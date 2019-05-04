extends TextureButton

export (float) var r_t
export (float) var g_t
export (float) var b_t

export (float) var r_b
export (float) var g_b
export (float) var b_b



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func ColorPressed():
	get_node("/root/Global").r_t = r_t
	get_node("/root/Global").g_t = g_t
	get_node("/root/Global").b_t = b_t
	get_node("/root/Global").r_b = r_b
	get_node("/root/Global").g_b = g_b
	get_node("/root/Global").b_b = b_b
	
	get_node("/root/Global").SaveColors()
