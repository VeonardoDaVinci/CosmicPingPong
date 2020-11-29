extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	get_node("Pingpong").play(0)
	yield(get_tree().create_timer(2),"timeout")
	get_tree().change_scene("res://scenes/gameField.tscn")
	
