extends Node3D

@export var speed = 1.0
@onready var Joystick = $Spatial/CanvasLayer/Joystick
@onready var arrowbuttons = $Spatial/CanvasLayer/ArrowButtons

func _input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		$Spatial/Camera3D.rotate_x(deg_to_rad(event.relative.y))
		rotate_y(deg_to_rad(event.relative.x))
	if Input.is_action_pressed("rotate_camera"):
		if event is InputEventMouseMotion:
			$Spatial/Camera3D.rotate_x(deg_to_rad(event.relative.y))
			rotate_y(deg_to_rad(event.relative.x))

		
func _process(_delta: float) -> void:
	if Input.is_action_pressed("move_left"):
		position.x -= speed
	if Input.is_action_pressed("Move_right"):
		position.x += speed
	if Input.is_action_pressed("move_forward"):
		position.z -= speed
	if Input.is_action_pressed("move_back"):
		position.z += speed
	if Input.is_action_pressed("move_up"):
		position.y += speed
	if Input.is_action_pressed("move_down"):
		position.y -= speed


func _on_hide_pressed() -> void:
	Joystick.hide()
	arrowbuttons.hide()


func _on_show_pressed() -> void:
	Joystick.show()
	arrowbuttons.show()
