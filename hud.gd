extends Control

@onready var throw_dice_function = get_node("Dice")





func _on_button_pressed():
	$Dice/Dice1.hide()
	$Dice/Dice2.hide()
	await get_tree().create_timer(1.0).timeout
	$Dice/Dice1.visible = true
	$Dice/Dice2.visible = true
	throw_dice_function.throw_dice()
	
