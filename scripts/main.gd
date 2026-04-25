extends Node2D

# Initial idea on how to program player movement based on a) dice throw and b) where its allowed to move

# 1. Map all positions a pawn can move to based on their Vector2 position ✅
# 2. Put all those positions in an array ✅
# 3. Every time you throw the dice, the possible options to move should be your current position + the dice number
# 4. It will also check if the pawn has something above, in which case it will prevent movement


var pawn_possible_positions_up: Array[Vector2] = []
var pawn_possible_positions_down: Array[Vector2] = []

func _ready():
	pawn_positions()
	


# Make an Array with all 65 possible pawn positions in each side of the board

func pawn_positions():
	
	# Pawn positions on the bottom side of the board

	var initial_position_up = Vector2(480, 80)
	var initial_position_down = Vector2(480, 448)
	for i in range(5): # 5 vertical positions
		pawn_possible_positions_down.append(Vector2(initial_position_down.x, initial_position_down.y - (i * 32))) # Moves coordinates by 32px on Y axis, 5 times
		pawn_possible_positions_up.append(Vector2(initial_position_up.x, initial_position_up.y + (i * 32))) # Moves coordinates by 32px on Y axis, 5 times
		for j in range(12): # 12 horizontal positions except postions Array[6, 19, 32, 45, 58] which are on top of the board wood - lost pawns basically
			pawn_possible_positions_down.append(Vector2(initial_position_down.x - ((j+1) * 32),initial_position_down.y - (i * 32))) # Moves coordinates by 32px on X axis, 13 times
			pawn_possible_positions_up.append(Vector2(initial_position_up.x - ((j+1) * 32),initial_position_up.y + (i * 32))) # Moves coordinates by 32px on X axis, 13 times
	


func possible_movement():
	pass

	
	
	
	
