extends Control

@onready var music_slider: HSlider = %MusicSlider

func _ready() -> void:
	music_slider.value_changed.connect(_on_music_slider_value_changed)
	
func _on_music_slider_value_changed(value: float) -> void:
	var db : float = linear_to_db(value)
	var audio_master_volume_id : int = AudioServer.get_bus_index("Music")
	AudioServer.set_bus_volume_db(audio_master_volume_id, db)
