extends Node3D

@export var brick_scene:PackedScene
@export var rows = 30
@export var column = 3
@export var step = 5
var rot_tower = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for col in range(column):
		for row in range(rows):
			var brick = brick_scene.instantiate()
			rot_tower = 2*PI*(1.0/float(rows))
			var ext_rot = (1.5*(col%2))
			print(rot_tower)
			var xy = [step*sin(rot_tower*float(row+ext_rot)),step*cos(rot_tower*float(row+ext_rot))]
			
			
			var pos = Vector3(xy[0],1.1*col,xy[1])
			brick.position = pos
			brick.rotation.y = atan2(xy[0],xy[1])
			var r = randf()
			var g = randf()
			var b = randf()
			
			brick.get_child(0).mesh.material.albedo_color = Color(r,g,b,1)
			#print("%f:%f:%f" % [r,g,b])
			add_child(brick)
			#get_child(get_child_count()-1).get_child(0).mesh.material.albedo_color = Color(r,g,b,1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
