extends KinematicBody2D

export (int) var SPEED

var inventory_space = 5
var inventory = []

var screensize

func _ready():
	screensize = get_viewport_rect().size
	hide()

func _process(delta):
	var velocity = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	
	if Input.is_action_pressed("ui_run") and velocity.length() > 0:
		velocity = velocity.normalized() * SPEED * 5
		$AnimatedSprite.play()
	elif velocity.length() > 0:
		velocity = velocity.normalized() * SPEED
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	
	position += velocity * delta
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	
	if velocity.x != 0:
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_v = false
		$AnimatedSprite.flip_h = velocity.x < 0

func add_item(itemname):
	if inventory_space > 0:
		print("I got an item: ", itemname)
		inventory.append(itemname)
		inventory_space -= 1
	else:
		print("No space left :( I currently hold:")
		for item in inventory:
			print("- ", item)

func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false

