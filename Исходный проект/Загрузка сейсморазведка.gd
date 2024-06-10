extends Button

#Обращение к баннеру загрузки файлаов
@onready var load = $"../Open"

#При нажатии на кнопку появляется баннер
func _on_button_up():
	load.visible = true

#Когда данное окно появляется
func _ready():
	#Выбор группы объектов
	var group_nodes = get_tree().get_nodes_in_group("MeshInstance3D")
	#Убирается кнопка сохранение 
	$"../Сохранение".visible = false
	#Убирается модель
	for node in group_nodes:
		if node is Node3D:
			node.visible = false

func _on_open_file_selected(path):
#Прочтение выбранного файла
	var load_file = FileAccess.open(path,FileAccess.READ)
	print("Файл выбран:", path)
#Закрытие оповещения
	$"../Оповещение".visible = false
#Появление кнопки сохранения модели
	$"../Сохранение".visible = true
#Выбор группы объектов и загрузка их
	var group_nodes = get_tree().get_nodes_in_group("MeshInstance3D")
	for node in group_nodes:
		if node is Node3D:
			node.visible = true

