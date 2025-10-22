extends CharacterBody2D

var displacement = Vector2(1, 0) * 500

func _process (delta):
	displacement = displacement * -1
	displacement = displacement * delta
	
	position = displacement
