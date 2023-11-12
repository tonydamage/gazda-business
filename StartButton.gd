extends Button

@export var SoundEffect : AudioStreamPlayer = null;


func _on_pressed():
	get_tree().change_scene_to_file("res://level/tutorial.tscn")
	if SoundEffect != null:
		SoundEffect.play()
