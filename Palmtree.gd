extends Area2D

signal start_game
var palm_types = ["greenpalm", "pinkpalm"]

func _ready():
	$AnimatedSprite.animation = "greenpalm"

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#if hit, change animation to "pinkpalm"

func _on_Palmtree_body_entered(body):
	$AnimatedSprite.animation = "pinkpalm"
	if body.has_method("add_item"):
		body.add_item("Kokosnuss")
	if body.is_in_group("Dino1"):
		print("Boing")
	$Chime.play()
#	$CollisionShape2D.disabled = true
