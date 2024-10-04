extends Camera3D

@export var player:Node3D
@export var target:Vector3


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var t = target+player.global_position
	var p = lerp(global_position,t,delta * 5)
	global_position = p
	
	look_at(player.global_position)
	pass
