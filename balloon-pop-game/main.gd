extends Node2D

var balloon_scene = preload("res://Balloon.tscn")  # Load balloon
var spawn_timer = 0.0
var score = 0

func _process(delta):
	# Spawn balloons over time
	spawn_timer += delta
	if spawn_timer > 1.5:  # Every 1.5 seconds
		spawn_timer = 0.0
		spawn_balloon()

func spawn_balloon():
	var balloon = balloon_scene.instantiate()  # Create balloon
	balloon.position = Vector2(randf_range(100, 900), 1920)  # Random X, bottom Y
	balloon.popped.connect(_on_balloon_popped)  # Listen for pop
	add_child(balloon)  # Add to game

func _on_balloon_popped():
	score += 1
	$CanvasLayer/Label.text = "Score: " + str(score)
