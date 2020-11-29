extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _integrate_forces(state):
	var xform = state.transform
	xform.origin.x = wrapf(xform.origin.x, 0, 1024)
	xform.origin.y = wrapf(xform.origin.y, 0, 600)
	state.transform = xform
#	pass




