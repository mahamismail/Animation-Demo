extends Area2D

onready var anim = $"Door Animation"
onready var mainCollider = $"Door Body/Door Body Collider"
onready var areaCollider = $"Door Collider"

func _ready():
	pass

func _on_Door_body_entered(body):
	if body.name == "Player" || body.name == "PlayerAlternate":
		anim.play("Open")


func _on_Door_Animation_animation_finished(anim_name):
	if anim_name == "Open":
		mainCollider.disabled == true
		get_tree().change_scene("res://Scenes/MainMenu.tscn")
