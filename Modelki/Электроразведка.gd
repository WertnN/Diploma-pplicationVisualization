extends Button

#При нажатии на кнопку переходит в электроразведку
func _on_button_up():
	get_tree().change_scene_to_file("res://Электроразведка но с данными.tscn")
