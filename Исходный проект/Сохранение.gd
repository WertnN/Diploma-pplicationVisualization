extends Button

# Обращение к диалоговому окну сохранения
@onready var save = $"../SeveOBJ"
# Первоначальная дириктория сохранения
func _ready():
	save.current_dir = "/"


	
#Выбор пути для сохранения файла
func _on_seve_obj_file_selected(path):

# Все объекты которые находяться в группе MeshInstance3D передаются
	var mesh_nodes = get_tree().get_nodes_in_group("MeshInstance3D")

# Контейнер данных
	var string = ""
# Заполнение контейнера данными из группы MeshInstance3D
	for item in mesh_nodes:
		string += str(item) + ", "

# Удаляем лишнюю запятую и пробел в конце
	string = string.left(string.length() - 2)

# Записть файла с данными
	var save_file = FileAccess.open(path, FileAccess.WRITE)
	save_file.store_csv_line(mesh_nodes)


#При нажатии на кнопку с сохранением диалоговое окно появляется
func _on_button_up():
	save.visible = true



