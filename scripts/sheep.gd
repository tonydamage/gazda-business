extends RigidBody2D
class_name Sheep

@export var runForce = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body is SheepCollider:
		# Change Sheep state
		var vec = (body.global_position - global_position).normalized()
		apply_force(vec * -runForce);
		pass
	pass # Replace with function body.
