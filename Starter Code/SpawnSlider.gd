extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	var ticks 
	ticks = get_ticks()
	print(ticks)
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_drag_ended(value_changed):
	var current
	current = value_changed
	print (current)
	pass # Replace with function body.

