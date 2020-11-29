extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressed = false;
var sound_earth = "Earth2"
# Called when the node enters the scene tree for the first time.
func _ready():
	pressed = true
	get_node(sound_earth).play()
	get_node("Earth").visible = true
	yield(get_tree().create_timer(2),"timeout")
	pressed = false
	get_node(sound_earth).stop()
	get_node("Earth").visible = false

var planets = ["Ball.tscn","Merkury.tscn","Wenus.tscn","Mars.tscn","Jowisz.tscn","Saturn.tscn","Uran.tscn","Neptun.tscn","Pluton.tscn"]
var sounds = ["Moon","Merkury","Wenus","Mars","Jowisz","Saturn","Uran","Neptun","Pluton","SolarSystem"]
var text = ["Moon2","Mercury","Venus","Mars2","Jupiter","Saturn2","Uranus","Neptune","Pluto","SolarSystem2"]
var i = 0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pressed == false:
		if Input.is_action_just_pressed("ui_select"):
			if i<9:
				pressed = true
				var projectile = load("res://scenes/"+planets[i])
				get_node(sounds[i]).play()
				get_node(text[i]).visible = true
				var object = projectile.instance()
				self.add_child(object)
				yield(get_tree().create_timer(1.5),"timeout")
				get_node(sounds[i]).stop()
				get_node(text[i]).visible = false
				pressed = false
				i+=1
			elif i == 9:
				pressed = true
				get_node(sounds[i]).play()
				get_node(text[i]).visible = true
				yield(get_tree().create_timer(1.5),"timeout")
				get_node(sounds[i]).stop()
				get_node(text[i]).visible = false
				pressed = false
				i+=1

