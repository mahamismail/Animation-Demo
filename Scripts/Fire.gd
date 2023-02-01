extends Area2D

func _ready():
	pass

func _on_Fire_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		yield(get_tree().create_timer(0.8), "timeout")
		$CollisionShape2D.set_deferred("disabled", true);
		queue_free();
