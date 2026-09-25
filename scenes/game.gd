extends Node2D

var car: PackedScene = preload("res://scenes/enemy_car.tscn")
var score: int

func _on_timer_timeout() -> void:
	# print("timer is ringed")
	var car1 = car.instantiate() as Area2D
	var PositionOfCar = $CarStartingPoint.get_children().pick_random() as Marker2D
	car1.position = PositionOfCar.position
	$Objects.add_child(car1)
	car1.connect("body_entered", killed)
	
func killed(body):
	print(body)
	print('You Killed')

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Killed")

func _on_score__timeout() -> void:
	score += 1
	$CanvasGroup/Label.text = 'testing Score: ' + str(score)
