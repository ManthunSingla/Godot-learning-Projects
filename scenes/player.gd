extends CharacterBody2D


var direction: Vector2
var speed: int = 150

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed	
	move_and_slide()
#	if Input.is_action_pressed("up"):
#		position += Vector2(0,-1) * speed
#	if Input.is_action_pressed("down"):
#		position += Vector2(0,1) * speed
#	if Input.is_action_pressed("left"):
#		position += Vector2(-1,0) * speed
#	if Input.is_action_pressed("right"):
#		position += Vector2(1,0) * speed
	
# 	position += direction * speed
	
