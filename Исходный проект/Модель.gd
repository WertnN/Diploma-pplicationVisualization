extends Button

#При нажатии на кнопку переходит к плату
func _on_button_up():
	get_tree().change_scene_to_file("res://Воксельный пласт.tscn")
