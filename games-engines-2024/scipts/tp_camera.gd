extends Camera3D

@export var player:Node3D
@export var target:Marker3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var p = lerp(global_position,target.global_position,delta * 4)
	global_position = p
	
	look_at(player.global_position)
	
	
	pass
