extends Button

#При нажатии на кнопку закрывает баннер с подсказкой
func _on_button_up():
	$"..".visible = false
