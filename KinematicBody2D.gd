extends KinematicBody2D

var motion = Vector2()
const MAX_SPEED = 300
const ACCELERATION = 60

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x =min(motion.x+ACCELERATION,MAX_SPEED)
		
	elif Input.is_action_pressed("ui_left"):
		motion.x =max(motion.x-ACCELERATION,-MAX_SPEED)
		
	elif Input.is_action_pressed("ui_up"):
		motion.y =max(motion.y-ACCELERATION,-MAX_SPEED)
		
	elif Input.is_action_pressed("ui_down"):
		motion.y =min(motion.y+ACCELERATION,MAX_SPEED)
		
	else:
		if motion.x > 0:
			if motion.x-15 >= 0:
				motion.x-=15
				
		if motion.x < 0:
			if motion.x+15 <= 0:
				motion.x+=15
			
		if motion.y > 0:
			if motion.y-15 >= 0:
				motion.y -= 15
			
		if motion.y < 0:
			if motion.y+15 <= 0:
				motion.y += 15
	
	motion = move_and_slide(motion)