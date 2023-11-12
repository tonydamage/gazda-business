extends Area2D

var requiredSheep = 0
@export var sheepCollection : Node
signal allSheepInArea

# Called when the node enters the scene tree for the first time.
func _ready():
		
	for c in sheepCollection.get_children():
		if c is Sheep:
			requiredSheep += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var sheepInArea = 0
	for c in get_overlapping_bodies():
		if c is Sheep:
			sheepInArea += 1
	if (sheepInArea >= requiredSheep):
		allSheepInArea.emit()


func _on_body_entered(body):
	if body is Sheep:
		body.IsInPen = true


func _on_body_exited(body):
	if body is Sheep:
		body.IsInPen = false
