# global.gd
extends Node

# Global variables (accessible from any script)
var score = 0
var enemies_killed = 0
var hostages_rescued = 0


# Called when the game starts
func _ready():
	print("Global script loaded successfully!")
