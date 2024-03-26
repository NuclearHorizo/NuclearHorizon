extends Node3D


func _on_cameraman_body_entered(Goku):
	
	$Goku.SPEED = 2
	$cameraman/Camera3D.current = true
	$Goku.JUMP_VELOCITY = 3
	
func _on_cameraman_body_exited(Goku):
	
	$Goku.SPEED = 5
	$cameraman/Camera3D.current = false
	$Goku.JUMP_VELOCITY = 4.5


func _on_cambio_body_entered(body):
	get_tree().change_scene_to_file("res://Escenas/Nivel1.tscn")
	
