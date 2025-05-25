extends RigidBody2D

@export var SPEED : float = 50.0
@export var INTREST : float = 100.0
@export var WAIT_TIME : float = 1.0
var _target:Vector2 = Vector2.ZERO

func _ready() -> void:
	_target =  position
	
	$body.frame=randi()%3
	$clothes.frame=randi()%119
	$hair.frame=randi()%76
	SPEED =randf_range(25,100)
	INTREST =randf_range(50,150)
	WAIT_TIME =randf_range(1.0,5.0)
	$Timer.wait_time=WAIT_TIME

func _physics_process(delta: float) -> void:
	move_and_collide((_target-position).normalized()*SPEED*delta)
	set_physics_process( not is_nearly_equal(_target,position) ) 

func is_nearly_equal(target,pos)->bool:
	return 10>(target-pos).length()
	

func _on_timer_timeout() -> void:
	_target =position+ Vector2(randf_range(-INTREST,INTREST),randf_range(-INTREST,INTREST))
	set_physics_process( true) 
