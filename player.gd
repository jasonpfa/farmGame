extends CharacterBody2D


@export var speed = 50

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("sidewalk") 
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("sidewalk")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.play("upwalk")
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite2D.play("downwalk")
	else:
		$AnimatedSprite2D.play("idle")

func player_sell_method():
	pass
	
func player_shop_method():
	pass
