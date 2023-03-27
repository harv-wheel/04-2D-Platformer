extends Area2D

export var score = 20

func _ready():
	pass


func _on_Coin_body_entered(body):
	if body.name == "Player":
		Global.update_score(score)
		queue_free()
