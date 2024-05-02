extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = "============================================
	SACRIFICE! 
	============================================"
	button.pressed.connect(self._button_pressed)
	add_child(button)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _button_pressed():
	print("Hello world!")
	var scene = preload("res://Obj2bspawned.tscn")
	var instance = scene.instantiate()
	add_child(instance)
	var currentPOS = instance.position.y
	if currentPOS >= 640: 
		print("delete here")
		instance.queue_free()
	
	

