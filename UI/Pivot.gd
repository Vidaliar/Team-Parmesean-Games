extends Node2D

var rotation_speed = 90  # Degrees per second
var pivot_point = Vector2(0, 0)  # Adjust the pivot point coordinates as needed

func _physics_process(delta):
	# Check for input and rotate the object accordingly
	if Input.is_action_pressed("left"):
		rotate_object(-delta)
	elif Input.is_action_pressed("right"):
		rotate_object(delta)
	
func rotate_object(delta):
	# Calculate the rotation angle based on the time elapsed and the rotation speed
	var rotation_angle = deg_to_rad(rotation_speed) * delta

	# Translate to the pivot point, rotate, and translate back
	translate(pivot_point)
	rotate(rotation_angle)
	translate(-pivot_point)
