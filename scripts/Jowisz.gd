extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _integrate_forces(state):
	var xform = state.transform
	xform.origin.x = wrapf(xform.origin.x, -150, 1174)
	xform.origin.y = wrapf(xform.origin.y, -150, 750)
	state.transform = xform
