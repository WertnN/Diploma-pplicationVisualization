extends Button

#Обращение к баннеру с загрузкой файла
@onready var load = $"../Open"

#При нажатии на кнопку появляется баннер
func _on_button_up():
	load.visible = true
	
# Передает данные после загрузки файла
func _on_open_file_selected(path):
	var load_file = FileAccess.open(path,FileAccess.READ)
	print("Файл выбран:", path)
	get_tree().change_scene_to_file("res://Скважины.tscn")
