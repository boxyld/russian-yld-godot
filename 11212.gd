extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	var yld = get_node("AnimationPlayer3")
	yld.play("end2")
	#get_tree().change_scene_to_file("res://node_2d.tscn") # Replace with function body.






func _on_animation_player_3_animation_finished(anim_name):
		get_tree().change_scene_to_file("res://info.tscn") # Replace with function body.
