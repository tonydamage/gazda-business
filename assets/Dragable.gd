extends Area2D
class_name Dragable

#var draggable = false
var offset: Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if draggable:
#		if Input.is_action_just_pressed("click"):
#			offset = get_global_mouse_position() - global_position
#		if Input.is_action_pressed("click"):
#			get_parent().global_position = get_global_mouse_position() - offset



func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseMotion:
		if event.button_mask == MOUSE_BUTTON_MASK_LEFT:
			#get_parent().velocity = event.velocity
			get_parent().draggable = true
			get_parent().velocity = (event.position - get_parent().global_position) / get_process_delta_time()
			get_parent().move_and_slide()
		else:
			get_parent().velocity = Vector2.ZERO
			get_parent().draggable = false
