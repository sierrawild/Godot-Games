extends Node2D

var score = 5
var timer : int = 0
var time_left : float = 5.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_welcome_message()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_counter(delta)



############################################
### My functions ###

func _welcome_message():
	print("Hello to my first function")

func _has_won(score):
	if score > 100:
		return true
	else:
		false

func _counter(delta):
	time_left -= delta
	print(time_left)
