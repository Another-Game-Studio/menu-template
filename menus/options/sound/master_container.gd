extends Control

@onready var master_slider: HSlider = %MasterSlider

func _ready() -> void:
	master_slider.value_changed.connect(_on_master_slider_value_changed)
	
func _on_master_slider_value_changed(value: float) -> void:
	var db : float = linear_to_db(value)
	var audio_master_volume_id : int = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(audio_master_volume_id, db)