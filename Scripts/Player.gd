extends KinematicBody2D

onready var anim = $PlayerSprites

func _ready():
	self.global_position = Vector2(448, 288)
	
	if get_tree().get_current_scene().get_name() == "MainLevel":
		$AnimationPlayer.play("DemoWalking");
	elif get_tree().get_current_scene().get_name() == "SecondLevel":
		$AnimationPlayer.play("Level2DemoWalking");
	
