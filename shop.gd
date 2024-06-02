extends StaticBody2D

func _ready():
	$shopmenu.visible = false

func _process(delta):
	if Global.weather == "rain":
		$shopworker.visible = false
	elif Global.weather == "none":
		$shopworker.visible = true
	if $shopmenu.item1owned == true:
		$carrot_seedpack.visible = true
	if $shopmenu.item2owned == true:
		$onion_seedpack.visible = true

func _on_area_2d_body_entered(body):
	if body.has_method("player_shop_method"):
		$shopmenu.visible = true


func _on_area_2d_body_exited(body):
	$shopmenu.visible = false
