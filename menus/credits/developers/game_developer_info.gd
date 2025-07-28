extends Control

@export var developer_info: DevelopperInfo

@onready var avatar: Sprite2D = %Avatar
@onready var itch_button: Button = %Itch
@onready var github_button: Button = %Github
@onready var name_label: Label = %Name
@onready var function_label: Label = %Function

func _ready() -> void:
	itch_button.button_down.connect(_on_itch_button_down)
	github_button.button_down.connect(_on_github_button_down)
	
	name_label.text = developer_info.developer_name
	function_label.text = developer_info.developer_function
	
	# Load the avatar texture if it exists
	avatar.texture = developer_info.avatar_texture
		
func _on_itch_button_down() -> void:
	OS.shell_open(developer_info.itch_url)

func _on_github_button_down() -> void:
	OS.shell_open(developer_info.github_url)
