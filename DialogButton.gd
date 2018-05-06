extends LinkButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	text = "111"

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_DialogButton_pressed():
	print("Hallo")
	self.text = "Test"
#	pass # replace with function body
