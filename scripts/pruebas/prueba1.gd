extends Node2D
var counter_clicker = 0
var label



# Llamado cuando el nodo entra en el árbol de la escena por primera vez.
func _ready():
  # Suponiendo que "txt_label" es el nombre del Label en la escena
	label = get_node("txt_clicks")
	if label:
		label.text = "clicks hechos : 0"
	pass  # Reemplazar con el cuerpo de la función si es necesario.

# Función para detectar cualquier tipo de entrada
func _input(event):
	if event is InputEventMouseButton:  # Verifica si el evento es de tipo click
		if event.pressed:
			counter_clicker = counter_clicker + 1
			label.text = "clicks hechos: " + str(counter_clicker)
			# Muestra en consola la posición del clic y el botón presionado
			print("Click detectado en posición: ", event.position)
			print("clicks : " , counter_clicker)
			#print("Botón: ", event.button_index, " (1 = izquierdo, 2 = derecho, 3 = medio)")

# Llamado cada frame. 'delta' es el tiempo transcurrido desde el frame anterior.
func _process(delta):
	pass  # Reemplazar con el cuerpo de la función si es necesario.
