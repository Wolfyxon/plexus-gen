extends Node

#go away from my spaghetti code >:c

func _ready():
	$canvas/background/Plexus.visible = true

func _physics_process(delta):
	$canvas/background/Plexus.maxDots = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points.value
	$canvas/background/Plexus/update.wait_time = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv.value
	$canvas/background/Plexus/spawn_new.wait_time = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv.value
	$canvas/background/Plexus/destroy.wait_time = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv.value
	
	$canvas/background/Plexus.enable_circles = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/circles_enabled.pressed
	$canvas/background/Plexus.enable_lines = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/lines_enabled.pressed
	$canvas/background/Plexus.canUpdate = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_enabled.pressed
	
	$canvas/background/Plexus.line_color = $GUI/popups/plexus_color.color
	$canvas/background/Plexus.circle_color = $GUI/popups/circle_color.color
	$canvas/background/Plexus.modulate = $GUI/popups/modulate.color
	
	$canvas/background/Plexus.line_width = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width.value
	
	#Inputs
	if Input.is_action_just_pressed("fullscreen"):
		OS.window_fullscreen = not(OS.window_fullscreen)
	pass


func _on_btn_plexus_color_pressed():
	$GUI/popups/plexus_color.visible = not($GUI/popups/plexus_color.visible)
	$GUI/popups/modulate.visible = false
	$GUI/popups/circle_color.visible = false


func _on_btn_circle_color_pressed():
	$GUI/popups/circle_color.visible = not($GUI/popups/circle_color.visible)
	$GUI/popups/modulate.visible = false
	$GUI/popups/plexus_color.visible = false


func _on_btn_modulate_pressed():
	$GUI/popups/modulate.visible = not($GUI/popups/modulate.visible)
	$GUI/popups/plexus_color.visible = false
	$GUI/popups/circle_color.visible = false
