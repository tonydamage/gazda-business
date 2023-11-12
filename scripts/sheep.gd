extends RigidBody2D
class_name Sheep

@export var AppearEffect: AudioStreamPlayer = null
@export var IsInPen = false;

var start_pos = Vector2.ZERO
var reset = false;

func _ready():
	start_pos = position


func _on_visible_on_screen_notifier_2d_screen_exited():
	reset = true
	if AppearEffect != null:
		AppearEffect.play()
	
	
func _integrate_forces(state):
	if reset:
		state.transform = Transform2D(0, start_pos)
		reset = false
