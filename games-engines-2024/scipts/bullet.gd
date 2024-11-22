extends CharacterBody3D


const SPEED = 5.0

func _physics_process(delta: float) -> void:
	var v = global_transform.basis.z
	#velocity = v * SPEED
	print(global_rotation)
	move_and_collide(global_transform.basis.z)
	#move_and_slide()
	pass
