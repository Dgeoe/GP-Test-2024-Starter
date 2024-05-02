extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = "============================================
	SACRIFICE! 
	============================================"
	button.pressed.connect(self._button_pressed)
	add_child(button)
	
	
func _button_pressed():
	var X = randi() % 500
	var Y = randi() % 500
	print("Hello world!")
	var scene = preload("res://Obj2bspawned.tscn")
	var instance = scene.instantiate()
	instance.position = Vector2(X, Y)
	add_child(instance)
	var currentPOS = instance.position.y
	if currentPOS >= 640: 
		print("delete here")
		instance.queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


	
	
	

