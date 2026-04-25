extends Control

@onready var throw_dice_scene = get_node("Dice")
@onready var dice_1 = $Dice/Dice1
@onready var dice_2 = $Dice/Dice2






func _on_button_pressed():
	$Dice/Dice1.hide()
	$Dice/Dice2.hide()
	await get_tree().create_timer(1.0).timeout
	$Dice/Dice1.visible = true
	$Dice/Dice2.visible = true
	throw_dice_scene.throw_dice()
	
