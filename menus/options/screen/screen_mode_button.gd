extends OptionButton

func _ready() -> void: 
	item_selected.connect(_on_item_selected)
	
func _on_item_selected(index: int) -> void:	
	if index == 0: # Fullscreen
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	elif index == 1: # Windowed
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)