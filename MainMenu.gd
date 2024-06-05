extends Control

@onready var aniplay = $MenuStart


func _ready():
	aniplay.play("menu_fade")
	$MenuMusic.play()

