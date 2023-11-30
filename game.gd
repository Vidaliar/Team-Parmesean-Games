extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	load("res://Cube/Cube.tscn")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_left_pressed():
	$Pivot.rotate(90)
	

	


func _on_right_pressed():
	$Pivot.rotate(-90)
	



func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://UI/win.tscn")
