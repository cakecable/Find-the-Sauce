extends AudioStreamPlayer2D

func _ready() -> void:
	if not playing:
		play()
