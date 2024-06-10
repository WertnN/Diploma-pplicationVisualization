extends Button

#При нажатии на кнопку переходит в раздел со скважинами
func _on_button_up():
	get_tree().change_scene_to_file("res://Скважины.tscn")
