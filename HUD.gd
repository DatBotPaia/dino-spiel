extends CanvasLayer

signal start_game

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")



func new_game():
	pass # replace with function body
