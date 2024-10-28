extends CharacterBody2D


const SPEED = 300.0



func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("right"):
		position.x += SPEED * delta
	if Input.is_action_pressed("left"):
		position.x += -SPEED * delta
	if Input.is_action_pressed("up"):
		position.y += -SPEED * delta
	if Input.is_action_pressed("down"):
		position.y += SPEED * delta

	move_and_slide()
