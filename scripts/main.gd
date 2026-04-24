extends Node2D

# to define each play and all the mechanics and moves for each one, I think I need to use enums

#enum Players { PLAYER1, PLAYER2 }
#
#@export var player_turn: Players # exports the enum to be editable in the inspector
#
## with enum exported you can do interesting things like the following
#
#func _ready():
	#match player_turn:
		#Players.PLAYER1:
			#print("It is Player 1 turn")
		#Players.PLAYER2:
			#print("It is Player 2 turn")
		#_: # default response
			#print("Which Player's turn is it?")
			
