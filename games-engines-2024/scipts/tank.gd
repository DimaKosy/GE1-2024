extends MeshInstance3D

@export var speed = 10
@export var rotSpeed = 180

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.z += speed * delta
	
	rotate_y(deg_to_rad(rotSpeed) * delta) 
	pass
