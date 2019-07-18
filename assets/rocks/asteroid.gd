extends KinematicBody2D

var vel = Vector2()

func start(pos):
	if pos < 0:
		vel = Vector2(rand_range(0.3,1), rand_range(0.1, 0.7))
	else:
		vel = Vector2(rand_range(0.3,1), rand_range(-0.7, -0.1))
	
	position = Vector2(cos(pos),sin(pos))


func _physics_process(delta):
	var collision = move_and_collide(vel * delta)
	if collision:
		vel = vel.bounce(collision.n)
		if collision.collider.has_method("hit"):
			collision.collider.hit()
