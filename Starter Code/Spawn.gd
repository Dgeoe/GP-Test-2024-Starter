extends Button

var audio_player: AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	audio_player = $AudioStreamPlayer2D
	var button = Button.new()
	button.text = "============================================
	SACRIFICE! 
	============================================"
	button.pressed.connect(self._button_pressed)
	add_child(button)
	
	
func _button_pressed():
	var X = randi() % 700
	var Y = randi() % 200
	print("Hello world!")
	var scene = preload("res://Obj2bspawned.tscn")
	var instance = scene.instantiate()
	#instance.position = Vector2(X, Y)
	add_child(instance)
	
	#Play sound
	if audio_player:
		# Generate a random pitch 
		var random_pitch = generate_random_pitch()
		
		# Set the pitch 
		audio_player.pitch_scale = random_pitch
		
		# Play the audio
		audio_player.play()
	else:
		print("AudioStreamPlayer2D node not found or invalid.")
	
	#Delete attempt
	var currentPOS = instance.position.y
	if currentPOS >= 640: 
		print("delete here")
		instance.queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#delete function (queue_free) should be here if I was better 
	pass
	

# pitch generator functon
func generate_random_pitch():
	var min_pitch = 0.8
	var max_pitch = 1.2
	
	return randf_range(min_pitch, max_pitch)

	
	
	

