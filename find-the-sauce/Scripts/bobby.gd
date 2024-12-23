
extends CharacterBody2D

@onready var all_interactions = []
@onready var interactLabel = $"Interaction Components/InteractLabel"
@onready var audio_player = $"AudioPlayer" # Reference to an AudioStreamPlayer node

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Right"):
		position.x += -SPEED * delta
	if Input.is_action_pressed("Left"):
		position.x += SPEED * delta
	if Input.is_action_pressed("Up"):
		position.y += -SPEED * delta
	if Input.is_action_pressed("Down"):
		position.y += SPEED * delta
	move_and_slide()

# Interaction handling
func _on_interaction_area_area_entered(area: Area2D) -> void:
	all_interactions.insert(0, area)
	update_interactions()

func _on_interaction_area_area_exited(area: Area2D) -> void:
	all_interactions.erase(area)
	update_interactions()

func update_interactions():
	if all_interactions:
		interactLabel.text = all_interactions[0].interact_label
		if all_interactions[0].has_method("trigger_interaction"):
			all_interactions[0].call("trigger_interaction")
	else:
		interactLabel.text = ""
