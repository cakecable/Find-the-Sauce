extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var audio_player = $"AudioPlayer" # Reference to an AudioStreamPlayer node

const audio_chain = [
	preload("res://Assets/SFX/loravoice1.mp3"),
]

var interaction_index = 0

func _ready():
	interaction_area.interact = Callable(self, "trigger_interaction")

func trigger_interaction():
	if interaction_index < audio_chain.size():
		audio_player.stream = audio_chain[interaction_index]
		audio_player.play()
		interaction_index += 1
	else:
		interaction_index = 0  # Reset the chain to start over
