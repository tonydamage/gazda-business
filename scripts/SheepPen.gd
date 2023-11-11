extends Area2D

var requiredSheep = 0

signal allSheepInArea

# Called when the node enters the scene tree for the first time.
func _ready():
		
	for c in get_parent().get_children():
		if c is Sheep:
			requiredSheep += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var sheepInArea = 0
	for c in get_overlapping_bodies():
		if c is Sheep:
			sheepInArea += 1
	if (sheepInArea >= requiredSheep):
		allSheepInArea.emit()
