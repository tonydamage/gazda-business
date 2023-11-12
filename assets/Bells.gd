extends AudioStreamPlayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !(get_parent().IsInPen || playing):
		play()
	
	if get_parent().IsInPen:
		stop()
