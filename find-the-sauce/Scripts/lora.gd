extends Node2D


@onready var interaction_area: InteractionArea = $InteractionArea
@onready var voice = preload("res://Assets/SFX/loravoice1.mp3")


const line: Array[String] =  [
	"Hey There!"
]

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

	
