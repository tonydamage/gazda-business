extends Button

@export var SoundEffect : AudioStreamPlayer = null;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
"playback_mode"

var buttonPressed = false

func _on_pressed():
	if SoundEffect != null:
		SoundEffect.play()
		buttonPressed = true


func _on_button_up():
	if SoundEffect != null && SoundEffect.playing:
		SoundEffect.stop()
		buttonPressed = false


func _on_audio_stream_player_finished():
	if SoundEffect != null && buttonPressed:
		SoundEffect.play()
