extends Node2D

var option_state = "closed"
var save_state = "closed"
var load_state = "closed"
var color_state = "closed"

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func OptionsPressed():
	if option_state == "closed":
		get_node("AdditionalOptions").move(Vector2(50, 0))
		option_state = "open"
	elif option_state == "open":
		get_node("AdditionalOptions").move(Vector2(-200, 0))

		option_state = "closed"
		if save_state == "open":
			SavePressed()
			
		if load_state == "open":
			LoadPressed()
		
		if color_state == "open":
			ColorPressed()

func SavePressed():
	if save_state == "closed":
		get_node("SaveButtons").move(Vector2(-220, 0))
		save_state = "open"
	elif save_state == "open":
		get_node("SaveButtons").move(Vector2(50, 0))
		save_state = "closed"

func LoadPressed():
	if (color_state == "open"):
		ColorPressed()
	
	get_node("/root/Global").delete_mode = false
	get_node("/root/Global").load_mode = true
	if load_state == "closed":
		get_node("LoadButtons").move(Vector2(-160, 50))
		load_state = "open"
	elif load_state == "open":
		get_node("LoadButtons").move(Vector2(50, 50))
		load_state = "closed"
		
func DeletePressed():
	get_node("/root/Global").delete_mode = true
	get_node("/root/Global").load_mode = false


func FileSaved(new_text):
	get_node("/root/Global").SaveCurrentFile(new_text)
	get_node("SaveButtons/SaveName").clear()
	
	get_node("LoadButtons").RefreshLoadFiles()

func RowCountPressed():
	var show_row = get_node("/root/Global").row_state
	if show_row == false:
		get_node("RowCounter").move(Vector2(0, 1024))
		get_parent().get_node("Main/Reset").move(Vector2(-144, 0))
		get_node("/root/Global").row_state = true
	elif show_row == true:
		get_node("RowCounter").move(Vector2(0, 1374))
		get_parent().get_node("Main/Reset").move(Vector2(0, 0))
		get_node("/root/Global").row_state = false


func ColorPressed():
	if load_state == "open":
		LoadPressed()
	
	if color_state == "closed":
		get_node("ColorButtons").move(Vector2(-160, 50))
		color_state = "open"
	elif color_state == "open":
		get_node("ColorButtons").move(Vector2(50, 50))
		color_state = "closed"
	
