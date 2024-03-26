extends Node3D

var pj 

func _ready():
	$AnimationPlayer.play("mixamo_com")
	$Label3D.hide()
	$Panel.hide()
	pj = $"../../Goku"
	
func _physics_process(delta):
	
	if $Area3D.overlaps_body(pj) == true:
		$Label3D.show()
		if Input.is_action_pressed("Menu_si"):
			$Label3D.hide()
			$Panel.show()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Escenas/Mundo inicial.tscn")
	

func _on_button_2_pressed():
	$Panel.hide()
	

func _on_area_3d_body_exited(body):
	$Label3D.hide()
