extends CharacterBody2D
class_name Player

@export var _is_in_spawn_mode: bool = false

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	if Input.is_action_pressed("space"):
		if _is_in_spawn_mode == false:
			_is_in_spawn_mode = true
			print("_is_in_spawn_mode is", _is_in_spawn_mode )
		if _is_in_spawn_mode == true:
			print("Error _is_in_spawn_mode", _is_in_spawn_mode )
			return



func _physics_process(delta):
	get_input()
	move_and_slide()


func _spawn_spawner(Spawner) -> void:
	pass
	
