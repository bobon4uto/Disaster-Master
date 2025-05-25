extends Node2D

func _ready() -> void:
	spawn_ppl(100)

func spawn_ppl(count:int):
	var  citizen_res= preload("res://classes/citizen.tscn")
	for i in range(0 ,count/3):
		var new_citizen = citizen_res.instantiate()
		new_citizen.position=Vector2( randf_range(1200,2400),  randf_range(1200,1800))
		add_child(new_citizen)
	for i in range(count/3 ,count*2/3):
		var new_citizen = citizen_res.instantiate()
		new_citizen.position=Vector2( randf_range(-2700,1000),  randf_range(1100,1200))
		add_child(new_citizen)
	for i in range(count*2/3 ,count):
		var new_citizen = citizen_res.instantiate()
		new_citizen.position=Vector2( randf_range(600,2700),  randf_range(-500,-450))
		add_child(new_citizen)
