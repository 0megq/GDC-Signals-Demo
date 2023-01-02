extends Area2D


var touching_mouse: bool = false


func _ready() -> void:
	var error = connect("mouse_exited", self, "_on_Area2D_mouse_exited")
	if error:
		push_error("error connecting signal mouse_exited to self")


func _process(_delta: float) -> void:
	if touching_mouse and Input.is_mouse_button_pressed(BUTTON_LEFT):
		print(name)


func _on_Area2D_mouse_entered() -> void:
	touching_mouse = true


func _on_Area2D_mouse_exited() -> void:
	touching_mouse = false
