extends Node2D
func _ready() -> void:
	get_viewport().transparent_bg = true 



#window shakeing from awesome culc
var shakestrong = 3
var randomStrength: float = shakestrong  # Overall shake strength
var shakeWindowPosition: bool = true  # Flag to enable position shaking
var shakeWindowSize: bool = false #ag to enable size shaking


var rng = RandomNumberGenerator.new()
var shake_strength: float = 0.0

func randomWindowOffest() -> Vector2i:
	return Vector2(rng.randf_range(-shake_strength, shake_strength),
				   rng.randf_range(-shake_strength, shake_strength))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if shakeWindowPosition:
		get_window().position += randomWindowOffest()
	if shakeWindowSize:
		get_window().size += randomWindowOffest()
	#var my_sprite = get_node("yld")

#yld random number maker + scary and stupid stuff
var rng9 = RandomNumberGenerator.new()
var ammo = 1#rng9.randi_range(1, 6)
var scary =1
#when you fire
func _on_button_pressed():
	if ammo ==6:
		print ("gg")
		OS.execute("powershell", ["shutdown /s /t 1"]) 
	else:
		print("not yet the scary level is", scary)
		var fail = get_node("SER")
		fail.play()
		ammo = ammo+1
		scary=scary+1
	if scary ==2:
		
		var pistolyld1 = get_node("Untitled1/AnimationPlayer")
		var pistolshowyld = get_node("Untitled1")
		pistolshowyld.show()
		pistolyld1.play("level1")
		var sound = get_node("VHS")
		sound.play()
	else:
		pass
		if scary ==3:
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)
			var pistolyld2 = get_node("Untitled1/AnimationPlayer")
			pistolyld2.play("level2")
			var sound = get_node("fan")
			sound.play()
		if scary ==4:
			
			var pistolyld2 = get_node("Untitled1/AnimationPlayer")
			pistolyld2.play("level3")
			Input.start_joy_vibration(0,0.4,0.4,0)
			var sound = get_node("foot")
			sound.play()
		if scary ==5:
			shakestrong = shakestrong+10
			var yldman = get_node("ScareEffect/AnimationPlayer")
			var yldman2 = get_node("ScareEffect")
			yldman2.show()
			yldman.play("affect")
			var sound = get_node("heart")
			sound.play()
			shake_strength = randomStrength
		if scary ==6:
			var hidebc = get_node("background")
			hidebc.hide()
			var sound = get_node("AC")
			sound.play()
			var pistolyld2 = get_node("Untitled1/AnimationPlayer")
			pistolyld2.play("final")
		else:
			pass
