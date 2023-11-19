extends Node

#The first step is to add as many Nodes as you like
#Second, add meta of a float value.

@export var value_to_compare : String

@export var satisfactory_value : float

var children_succeeded : int = 0

func _ready():
	if get_child_count() == 0: return
	for c in get_children():
		if c.get_meta(value_to_compare) >= satisfactory_value:
			children_succeeded += 1
	result()
	
func result() -> void:
	if children_succeeded == 0:
		print("None have succeeded")
	elif children_succeeded > 0:
		print("At least one has succeeded")
	elif children_succeeded == get_child_count():
		print("All have succeeded")
