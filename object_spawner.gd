extends Node2D

export var radius = 20
export var level = 1
export var asteroidspawnrate = .2
export var shipspawnrate = .1

# Once the asteroid node is created, throw it in here
## var asteroid = preload()

func _ready():
	
	
	pass

func _on_Timer_timeout():
	spawnEntity();
	
func spawnEntity():
	var spawn_point = rand_range(-PI/2, PI/2)
	var xpos = sin(spawn_point) * radius
	var ypos = sin(spawn_point) * radius
	
	var objecttogenerate = randf()
	
	### Change these values in the 
	var object
	if (objecttogenerate < asteroidspawnrate):
		object = preload("res://assets/rocks/asteroid.tscn")
	elif (objecttogenerate < shipspawnrate && objecttogenerate > asteroidspawnrate):
		object = preload("res://assets/enemies/EnemyShip.tscn")
		
	object.Position2D(xpos, ypos)
	
	pass
