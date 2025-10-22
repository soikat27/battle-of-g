extends Area2D

func _on_body_entered(body):
	if body.is_in_group("player"):
		Global.score += 200
		Global.hostages_rescued += 1
		queue_free()
