extends Node
class_name BaseLevel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sheep_pen_all_sheep_in_area():
	print_debug("All Sheep In Pen")
