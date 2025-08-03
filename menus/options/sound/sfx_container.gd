extends Control

@onready var sfx_slider: HSlider = %SFXSlider

func _ready() -> void:
	sfx_slider.value_changed.connect(_on_sfx_slider_value_changed)
	
func _on_sfx_slider_value_changed(value: float) -> void:
	var db : float = linear_to_db(value)
	var audio_master_volume_id : int = AudioServer.get_bus_index("SFX")
	AudioServer.set_bus_volume_db(audio_master_volume_id, db)

func _exit_tree() -> void:
	sfx_slider.value_changed.disconnect(_on_sfx_slider_value_changed)	