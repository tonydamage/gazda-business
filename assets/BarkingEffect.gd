extends AudioStreamPlayer

#@export var Doggo : CollisionShape2D = null;
#
#var numberOfNearbySheep = 0
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	var nearbySheep = Doggo.get_overlapping_bodies()
#	if nearbySheep.length() != numberOfNearbySheep:
#		play()
#		numberOfNearbySheep = nearbySheep.length()
	

func _on_barking_area_body_entered(body):
	play()
