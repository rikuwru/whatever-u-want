extends Control


@onready var aniplayHover = $HoverFade

func _ready():
	pass
	
func LoadGame():
	pass

func Settings():
	pass

func NewGame():
	pass

#plays sound when mouse hovers.
func _on_new_game_mouse_entered():
	$menu_huver.play()
	aniplayHover.play("hover_fade_new")
	
func _on_settings_mouse_entered():
	$menu_huver3.play()
	aniplayHover.play("hover_fade_settings")
func _on_load_game_mouse_entered():
	$menu_huver2.play()
	
	aniplayHover.play("hover_fade_load")
#plays sound when focused, used for controllers to also have the sound.
func _on_new_game_focus_entered():
	$menu_huver.play()
	
	aniplayHover.play("hover_fade_new")
func _on_settings_focus_entered():
	$menu_huver3.play()
	aniplayHover.play("hover_fade_settings")
func _on_load_game_focus_entered():
	$menu_huver2.play()
	aniplayHover.play("hover_fade_load")

func _on_new_game_mouse_exited():
	
	aniplayHover.stop()

func _on_load_game_mouse_exited():
	
	aniplayHover.stop()
	
func _on_settings_mouse_exited():
	
	aniplayHover.stop()
#if the mouse enters any of the options, the function for button focus code won't run, making sure the hover sfx doesn't happen twice for pc players.
func hover_detect():
	if _on_new_game_mouse_entered() == true:
		_on_new_game_focus_entered() == false
	if _on_load_game_mouse_entered() == true:
		_on_load_game_focus_entered() == false
	if _on_settings_mouse_entered() == true:
		_on_settings_focus_entered() == false
	else:
		_on_load_game_focus_entered() == true
		_on_new_game_focus_entered() == true
		_on_settings_focus_entered() == true


func _on_new_game_pressed():
	$menu_click.play()


func _on_load_game_pressed():
	$menu_click2.play()


func _on_settings_pressed():
	$menu_click3.play()
	
	
func _on_menu_start_animation_finished(anim_name):
	pass
