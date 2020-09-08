extends Node2D


# Declare member variables here. Examples:
var anim = false
var select = false
var code = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Title")

# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("left"):
		if code == 0:
			code = 1
		elif code == 1:
			code = 2
		elif code == 2:
			code = 3
	if Input.is_action_just_pressed("right"):
		if code == 3:
			code = 4
		elif code == 4:
			code = 5
		elif code == 5:
			code = 6
	if Input.is_action_just_pressed("up"):
		if code == 6:
			code = 7
		elif code == 7:
			code = 8
		elif code == 8:
			code = 9
			select = true
			$"Correct Code".play()
	if anim == true:
		if Input.is_action_pressed("start"):
			if select == false:
				pass
			elif select == true:
# warning-ignore:return_value_discarded
				get_tree().change_scene("res://Stages/Stage Select.tscn")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == 'Title':
		anim = true
