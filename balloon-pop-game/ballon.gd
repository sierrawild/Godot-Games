extends Area2D

signal popped
var rise_speed = 100.0
var balloon_color = Color.RED
var was_pressed = false

func _ready():
	$Polygon2D.color = balloon_color

func _process(delta):
	position.y -= rise_speed * delta
	
	# Detect click (not hold)
	var is_pressed = Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)
	
	if is_pressed and not was_pressed:  # Just pressed this frame
		var mouse_pos = get_global_mouse_position()
		var distance = global_position.distance_to(mouse_pos)
		
		if distance < 60:  # Adjust this to match your balloon size
			emit_signal("popped")
			queue_free()
	
	was_pressed = is_pressed
