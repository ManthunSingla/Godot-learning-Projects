extends Node2D

var car: PackedScene = preload("res://scenes/enemy_car.tscn")

func _on_timer_timeout() -> void:
	# print("timer is ringed")
	var car1 = car.instantiate() as Area2D
	
	var PositionOfCar = $CarStartingPoint.get_children().pick_random() as Marker2D
	car1.position = PositionOfCar.position
	$Objects.add_child(car1)
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Killed")
	
