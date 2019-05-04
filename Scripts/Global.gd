extends Node2D

onready var current_stitch_count = 0
onready var current_row = 0

onready var stitch_delta = 1

onready var stitch_per_row = 0
onready var row_total = 0

onready var completed_rows = 0

onready var row_state = false

onready var r_t = .506
onready var g_t = .506
onready var b_t = .506

onready var r_b = .855
onready var g_b = .855
onready var b_b = .855

onready var update_colors = false

var num_saved = 0
var save_limit = 8

var load_mode = true
var delete_mode = false

var save_path = "user://save-file.cfg"
var config = ConfigFile.new()
var load_resource = config.load(save_path)


func _ready():
	num_saved = config.get_sections().size()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
func GetSaveIndexName(index):
	if (index < config.get_sections().size()):
		return config.get_sections()[index]
	else:
		return ""
		
# Change index
func SaveCurrentFile(save_name):
	var section_exists = false
	for section in config.get_sections():
		if section == save_name:
			section_exists = true
	
	if (section_exists || num_saved < save_limit):
		config.set_value(save_name, "current_stitch_count", current_stitch_count)
		config.set_value(save_name, "current_row", current_row)
		config.set_value(save_name, "stitch_delta", stitch_delta)
		config.set_value(save_name, "stitch_per_row", stitch_per_row)
		config.set_value(save_name, "row_total", row_total)
		config.set_value(save_name, "completed_rows", completed_rows)
		config.save(save_path)
		
		num_saved += 1

func LoadSaveFile(index):
	if (index < config.get_sections().size()):
		var save_name = config.get_sections()[index]
		current_stitch_count = config.get_value(save_name, "current_stitch_count", 0)
		current_row = config.get_value(save_name, "current_row", 0)
		stitch_delta = config.get_value(save_name, "stitch_delta", 0)
		stitch_per_row = config.get_value(save_name, "stitch_per_row", 0)
		row_total = config.get_value(save_name, "row_total", 0)
		completed_rows = config.get_value(save_name, "completed_rows", 0)
		
		
func DeleteSaveFile(index):
	if (index < config.get_sections().size()):
		config.erase_section(config.get_sections()[index])
	
	num_saved -= 1
	
func CheckRowProgress():
	if row_state == true and current_stitch_count == stitch_per_row:
		current_stitch_count = 0
		completed_rows += 1
