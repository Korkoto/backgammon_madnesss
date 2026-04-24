extends StaticBody2D

var dragging: = false
var offset: = Vector2(0,0)
var snap = 32


# Mouse drag and drop with left click

func _process(_delta):
	if dragging:
		var new_position = get_global_mouse_position() - offset
		position = Vector2(snapped(new_position.x, snap),snapped(new_position.y,snap))

func _on_button_button_down() -> void:
	dragging = true
	offset = get_global_mouse_position() - global_position

func _on_button_button_up() -> void:
	dragging = false
