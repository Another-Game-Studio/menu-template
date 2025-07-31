extends Area3D

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(player: Node3D) -> void:	
	if player.is_in_group("player"):
		SignalBus.player_entered_start_area.emit(player)