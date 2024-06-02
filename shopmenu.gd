extends StaticBody2D

#item  = carrotseed, 2 = onionseed
var item = 1

var item1price = 3
var item2price = 5

var item1owned = false
var item2owned = false

var price

func _ready():
	$seedicon.play("carrotseed")
	item = 1
	
func _physics_process(delta):
	if self.visible == true:
		if item == 1:
			$seedicon.play("carrotseed")
			$pricelabel.text = "3"
			if Global.coins >= item1price:
				if item1owned == false:
					$buybuttoncolor.color = "353ad31a" # green
					$buylabel.text = "BUY!"
				else:
					$buybuttoncolor.color = "940d1572" # red
					$buylabel.text = "Not Available"
			else:
				$buybuttoncolor.color = "940d1572" # red
				$buylabel.text = "Not Available"
		if item == 2:
			$seedicon.play("onionseed")
			$pricelabel.text = "5"
			if Global.coins >= item2price:
				if item2owned == false:
					$buybuttoncolor.color = "353ad31a" # green
					$buylabel.text = "BUY!"
				else:
					$buybuttoncolor.color = "940d1572" # red
					$buylabel.text = "Not Available"
			else:
				$buybuttoncolor.color = "940d1572" # red
				$buylabel.text = "Not Available"

func _on_buttonleft_pressed():
	swap_item_back()

func _on_buttonright_pressed():
	swap_item_forward()

func _on_buybutton_pressed():
	if item == 1:
		price = item1price
		if Global.coins >= price:
			if item1owned == false:
				buy()
	if item == 2:
		price = item2price
		if Global.coins >= price:
			if item2owned == false:
				buy()	

func swap_item_back():
	if item == 1:
		item = 2
	elif item == 2:
		item = 1

func swap_item_forward():
	if item == 1: 
		item = 2
	elif item == 2:
		item = 1
			
func buy():
	Global.coins -= price
	if item == 1:
		item1owned = true
	if item == 2:
		item2owned = true
