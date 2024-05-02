extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var currentPOS = position.y
	if currentPOS >= 540: 
		print("delete here")
		self.queue_free()
