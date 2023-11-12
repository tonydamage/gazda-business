extends Button
@export var SoundEffect : AudioStreamPlayer = null
@export var PathToNextLevel : String = ""


func _on_pressed():
	get_tree().change_scene_to_file(PathToNextLevel)
	if SoundEffect != null:
		SoundEffect.play()


func _on_sheep_pen_all_sheep_in_area():
	visible = true
	disabled = false
