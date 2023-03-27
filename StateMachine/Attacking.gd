extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Attacking")
	$Timer.start()

func end():
	pass

func physics_process(_delta):
	pass


func _on_Timer_timeout():
	if SM.state_name == "Attacking":
		player.attack()


