extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	var yld = get_node("AnimationPlayer")
	yld.play("open") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



	
	
	

func _on_pressed():
	var yld = get_node("AnimationPlayer")
	yld.play("end")
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://warning.tscn")
