class_name Player extends CharacterBody2D

#determines speed of CharacterBody2D
@export var move_speed = 75

#makes it so that if you do a directional input, it will do math doing the direction times the move speed you choose
func get_input():
	var input_direction = Input.get_vector("LEFT", "RIGHT", "UP", "DOWN")
	velocity = input_direction * move_speed

#depending on which input the engine detects, it will move the character??
func _physics_process(delta):
	get_input()
	move_and_slide()
	update_animation()

@onready var _animation_player = $AnimationPlayer

func update_animation():
	var is_moving = velocity.length_squared() > 0
	var direction = "DOWN"
	if is_moving:
		if velocity.x < 0: direction = "LEFT"
		elif velocity.x > 0: direction = "RIGHT"
		elif velocity.y > 0: direction = "DOWN"
		elif velocity.y < 0: direction = "UP"
			$player_sprite.play("WALK_" + direction)
		
		else:
			$player_sprite.play("IDLE_" + direction)
