extends Node2D
var width 
var height 
var lableSizeX
var lableSizeY

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	width = get_viewport_rect().size.x
	height = get_viewport_rect().size.y
	
	lableSizeX = $Label.size.x
	lableSizeY = $Label.size.y
	
	print("Hello World!")
	$Label.text = "Hello World!"
	$Label.position.x = (width- lableSizeX) /2
	$Label.position.y = (height - lableSizeY) / 2
	
	$Label.modulate = Color.GREEN_YELLOW
	
func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.ALICE_BLUE
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN_YELLOW
	
	
