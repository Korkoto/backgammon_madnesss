extends RigidBody2D

@onready var dice_1 = $Dice1
@onready var dice_2 = $Dice2


# throw_dice function picks at random 1 of the 6 sides of a dice, simulating a dice throw
func throw_dice():
	

	
	# Assigns a random number from 0 to 5 to dice1 and dice2 variables, corresponding to each dice frame
	var dice_1_frame: int = randi_range(0, 5)
	var dice_2_frame: int = randi_range(0, 5)
	
	
	# Picks only 1 frame from Dice 1 and 2 AnimatedSprite2D, based on the random number from dice1 and dice2 variables
	dice_1.set_frame(dice_1_frame)
	dice_2.set_frame(dice_2_frame)
	
	# Moves dice to frame, just so everything is more visible
	dice_1.position = Vector2(320,250)
	dice_2.position = Vector2(360, 250)
	dice_1.scale = Vector2 (1.5, 1.5)
	dice_2.scale = Vector2 (1.5, 1.5)
