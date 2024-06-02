extends Node2D

func _physics_process(delta):
	$carrottext.text = ("= " + str(Global.numofcarrots))
	$oniontext.text = ("= " + str(Global.numofonions))
	
	$coinstext.text = ("= " + str(Global.coins))
