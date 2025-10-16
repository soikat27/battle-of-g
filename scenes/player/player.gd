extends CharacterBody2D

var speed: float = 55
#var faceDir: String = 'right'

func _process(_delta) -> void:
	
	# direction
	var dir: Vector2 = Input.get_vector("left", "right", "up", "down")
	
	# face the right direction
	if dir.x < 0:
		$image.flip_h = true
	elif dir.x > 0:
		$image.flip_h = false

	# set velocity and move
	velocity = dir * speed
	move_and_slide()
