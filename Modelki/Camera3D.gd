extends Camera3D

#Управление камерой клавиатура
#Скорость передвижения
var movement_speed = 10

func _process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if direction != Vector3.ZERO:
		direction = direction.normalized() * movement_speed * delta
		translate(direction)
	rotation.x = clamp(rotation.x, -0.9, 0.9)
	

#Управление камерой мышка
#Чувствительность мыши
var mouse_sensitivity = 0.01
var mouse_previous_coords = 0.01

func _input(event):
	#Момент нажатия на нкопку мыши
	if event is InputEventMouseMotion:
		#Здесь указывам что нужно именно левая кнопка мыши
		if event.button_mask & MOUSE_BUTTON_LEFT:
			#Расчет скорости врящения камеры
			var delta = (event.global_position - mouse_previous_coords) * mouse_sensitivity
			#Ограничение вращения камеры
			rotate(Vector3.UP, -event.relative.x*0.009)
			rotate_object_local(Vector3.LEFT, event.relative.y * 0.009)
			#rotate_x(-delta.y)
		#Передача параметров координат расположения камеры
		mouse_previous_coords = event.global_position
	
	
	

