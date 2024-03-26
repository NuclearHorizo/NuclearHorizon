extends Node3D

func _ready():
	$Control/Label/AnimationPlayer.play("Titulo")
	$"Camera3D".current = true
	$"Bajarle el volumen".play()
	
func _on_jugar_pressed():
	$"Control".hide()
	$Camera3D.current = false
	$"Bajarle el volumen".stop()
	get_tree().change_scene_to_file("res://Escenas/tuto.tscn")

func _on_salir_pressed():
	get_tree().quit()

