extends Button

func _ready() -> void:
	button_down.connect(_on_button_down)
	
func _on_button_down() -> void:	
	get_tree().change_scene_to_file("res://menus/main_menu.tscn")

func _exit_tree() -> void:
	button_down.disconnect(_on_button_down)	