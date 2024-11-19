extends Area2D


func _on_interaction_area_entered(area: Area2D) -> void:
	# Logic when entering the interaction area
	print("Entered interaction area")

func _on_interaction_area_exited(area: Area2D) -> void:
	# Logic when exiting the interaction area
	print("Exited interaction area")
