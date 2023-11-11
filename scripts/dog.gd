extends CharacterBody2D

@export var WalkSound : AudioStreamPlayer = null;
@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.
var draggable = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$AnimatedSprite2D.play()
	
	if !draggable:
		velocity = Vector2.ZERO # The player's movement vector.
		if Input.is_action_pressed("move_right"):
			velocity.x += 1
		if Input.is_action_pressed("move_left"):
			velocity.x -= 1
		if Input.is_action_pressed("move_down"):
			velocity.y += 1
		if Input.is_action_pressed("move_up"):
			velocity.y -= 1
		if velocity.length() > 0:
			velocity = velocity.normalized() * speed
		
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x > 0
	if velocity.length() == 0:
		$AnimatedSprite2D.animation = "idle"
	
	if velocity.length() > 0 && !WalkSound.playing:
		WalkSound.play()
	if velocity.length() == 0 && WalkSound.playing:
		WalkSound.stop()
