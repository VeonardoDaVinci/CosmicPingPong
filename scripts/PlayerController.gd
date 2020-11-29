extends KinematicBody2D




# Called when the node enters the scene tree for the first time.
func _ready():
	var i = 0

export var speed = 300

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position.x = wrapf(position.x, -50, 1074)
	position.y = wrapf(position.y, -50, 650)
	# Get player input
	var direction: Vector2
	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	var planets = ["Ball.tscn","Merkury.tscn","Wenus.tscn","Mars.tscn","Jowisz.tscn","Saturn.tscn","Uran.tscn","Neptun.tscn","Pluton.tscn"]
	
	# If input is digital, normalize it for diagonal movement
	if abs(direction.x) == 1 and abs(direction.y) == 1:
		direction = direction.normalized()
	
	# Apply movement
	var movement = speed * direction
	move_and_slide(movement)
#	pass


