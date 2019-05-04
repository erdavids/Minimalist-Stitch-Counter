extends TextureButton

export (int) var index
var save_file = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	GetName()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func GetName():
	save_file = get_node("/root/Global").GetSaveIndexName(index)
	get_node("Label").text = save_file


func LoadPressed():
	if save_file != "":
		if get_node("/root/Global").delete_mode == true:
			get_node("/root/Global").DeleteSaveFile(index)
			get_node("/root/Global").delete_mode = false
			get_node("/root/Global").load_mode = true
			get_parent().RefreshLoadFiles()
		elif get_node("/root/Global").load_mode == true:
			get_node("/root/Global").LoadSaveFile(index)
