extends Node2D


@onready var interaction_area: InteractionArea = $InteractionArea


const line: Array[String] =  [
	"Hey There!"
]

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

	
