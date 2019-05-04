extends TextureButton

var state = "inactive"

onready var timer = get_node("Timer")

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func ResetPressed():
	if state == "inactive":
		get_node("Label").text = "Reset?"
		state = "active"
		timer.set_wait_time(1.5)
		timer.start()
	elif state == "active":
		timer.stop()
		get_node("/root/Global").current_stitch_count = 0
		if get_node("/root/Global").row_state == true:
			state = "double"
			get_node("Label").text = "Reset??"
			timer.set_wait_time(1.5)
			timer.start()
		else:
			state = "inactive"
			get_node("Label").text = "Reset"
			
	elif state == "double":
		timer.stop()
		get_node("/root/Global").completed_rows = 0
		state = "triple"
		get_node("Label").text = "Reset???"
		timer.set_wait_time(1.5)
		timer.start()
		
	elif state == "triple":
		timer.stop()
		get_node("/root/Global").stitch_per_row = 0
		get_node("/root/Global").row_total = 0
		state = "inactive"
		get_node("Label").text = "Reset"


func TimerTimeout():
	timer.stop()
	state = "inactive"
	get_node("Label").text = "Reset"
	
	
