extends MeshInstance3D

@export var bullet_scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Shoot"):
		var TEnd:Marker3D = find_child("TurretEnd")
		var bullet:CharacterBody3D = bullet_scene.instantiate()
		
		bullet.global_position = TEnd.global_position
		bullet.rotation = global_rotation
		get_tree().root.get_child(0).add_child(bullet)
	pass
