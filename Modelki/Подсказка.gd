extends Button

#При нажатии на кнопку появляется панель с подсказкой
func _on_button_up():
	$"../Panel".visible = true
