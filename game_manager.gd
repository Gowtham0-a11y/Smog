extends Node
@onready var score_label = $"score label"
var score = 0
func add_point():
	score += 1
	score_label.text = " You Collected " + str(score) + " coins. "
