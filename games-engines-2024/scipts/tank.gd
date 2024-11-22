extends CharacterBody3D

@export var speed = 10
@export var rotSpeed = 180

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var forward = Input.get_axis("move_backward", "move_forward")
	var rot_con = Input.get_axis("turn_right", "turn_left")
	#print(rot_con)
	var facing = global_transform.basis.z
	#Vector3(0,0,forward*delta*speed)
	velocity = facing * forward * speed
	move_and_slide()
	
	#translate()
	rotate_y(deg_to_rad(rotSpeed*rot_con)*delta)
	pass
