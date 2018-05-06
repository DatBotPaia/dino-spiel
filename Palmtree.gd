extends RigidBody2D

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
	print("huhu palme")
#	$AnimatedSprite.animation = "pinkpalm"
	$Chime.play()
	$CollisionShape2D.disabled = true
