extends Node

var score = 0
var lives = 5
var level = 1

func update_lives():
	lives -= 1
	print(lives)

func update_score(s):
	score += s

func _unhandled_input(_event):
	if Input.is_action_pressed("quit"):
		get_tree().quit()
