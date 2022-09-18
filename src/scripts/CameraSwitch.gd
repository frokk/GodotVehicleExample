extends Spatial

onready var FPP_Camera = $"Truck/90s Truck/FPP"
onready var TPP_Camera = $"Truck/90s Truck/TPP"

var FPP_Is_Active = true

func _process(delta):
	if Input.is_action_just_pressed("Change_Camera"):
		if FPP_Is_Active:
			FPP_Camera.current = false
			TPP_Camera.current = true
			FPP_Is_Active = false
		else:
			FPP_Camera.current = true
			TPP_Camera.current = false
			FPP_Is_Active = true
