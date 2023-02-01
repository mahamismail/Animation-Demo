extends Area2D

onready var anim1 = "SlashRight";
onready var anim2 = "SlashLeft";
onready var anim3 ="SlashDown";
onready var anim4 = "SlashUp";

func _ready():
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Fire_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		yield(get_tree().create_timer(0.8), "timeout")
		$CollisionShape2D.set_deferred("disabled", true);
		queue_free();
