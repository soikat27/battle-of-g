extends CharacterBody2D

var displacement = Vector2(1, 0) * 500

func _process (delta):
	displacement = displacement * -1
	displacement = displacement * delta
	
	position = displacement
	
func _on_area_2d_body_entered(body):
	if body.is_in_group("weapon"):
		Global.score += 100
		Global.enemies_killed += 1
		queue_free()
