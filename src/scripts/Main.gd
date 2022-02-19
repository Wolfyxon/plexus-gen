extends Node

#go away from my spaghetti code >:c

var is_rendering = false

var ready = false

func _ready():
	$canvas/background/Plexus.visible = true
	$AnimationPlayer.play("RESET")
	ready = true
	
	var dir = Directory.new()
	
	dir.open("user://")
	if not dir.dir_exists("export"):
		dir.make_dir("export")
		
	if not dir.dir_exists("export/images"):
		dir.make_dir("export/images")
		
	if not dir.dir_exists("export/videos"):
		dir.make_dir("export/videos")
		
	if not dir.dir_exists("export/gifs"):
		dir.make_dir("export/gifs")
	

var sync_settings = true

func _physics_process(delta):
	if sync_settings and ready:
		$canvas/background/Plexus.maxDots = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points.value
		$canvas/background/Plexus/update.wait_time = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv.value
		$canvas/background/Plexus.speed = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/speed.value
		$canvas/background/Plexus/spawn_new.wait_time = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv.value
		$canvas/background/Plexus/destroy.wait_time = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv.value
		$canvas/background/Plexus.line_width = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width.value
		$canvas/background/Plexus.rect_scale = Vector2(
			$GUI/menus/left/properties/ScrollContainer/VBoxContainer/global_size_x.value,
			$GUI/menus/left/properties/ScrollContainer/VBoxContainer/global_size_y.value
		)
		$canvas/background/back_effects/Light2D.position = Vector2(
			$GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_pos_x.value,
			$GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_pos_y.value
		)
		$canvas/background/back_effects/Light2D.scale = Vector2(
			$GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_size.value,
			$GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_size.value
		)
		$canvas/background/Plexus.rect_rotation = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/global_rotation.value
		$canvas/background/back_effects.global_rotation = 0
		
		$canvas/background/Plexus.enable_circles = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/circles_enabled.pressed
		$canvas/background/Plexus.enable_lines = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/lines_enabled.pressed
		$canvas/background/Plexus.canUpdate = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_enabled.pressed
		get_tree().paused = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/pause_render.pressed
		$canvas/background/Plexus.squared = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/right_angles.pressed
		
		if not $GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_rainbow.pressed:
			$canvas/background/Plexus.line_color = $GUI/popups/plexus_color.color
			$canvas/background/Plexus/lineAnim.stop()
		else:
			$canvas/background/Plexus/lineAnim.play("rainbow")
		
		$canvas/background/back_effects/gradient.self_modulate = $GUI/popups/gradient_color.color
		if not $GUI/menus/left/properties/ScrollContainer/VBoxContainer/circle_rainbow.pressed:
			$canvas/background/Plexus.circle_color = $GUI/popups/circle_color.color
			$canvas/background/Plexus/circleAnim.stop()
		else:
			$canvas/background/Plexus/circleAnim.play("rainbow")
		$canvas/background/Plexus.modulate = $GUI/popups/modulate.color
		VisualServer.set_default_clear_color($GUI/popups/bgcolor.color)#$canvas/background.color = $GUI/popups/bgcolor.color
		
		if not $GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_rainbow.pressed:
			$canvas/background/back_effects/lightAnim.stop()
		else:
			$canvas/background/back_effects/lightAnim.play("rainbow")
			
		$canvas/background/back_effects/Light2D.self_modulate = $GUI/popups/lightcolor.color
			
		$canvas/background/back_effects/lightAnim.playback_speed = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_rainbow_speed.value
		$canvas/background/Plexus/lineAnim.playback_speed = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_rainbow_speed.value
		$canvas/background/Plexus/circleAnim.playback_speed = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/circle_rainbow_speed.value
		
		$canvas/background/Plexus.plusCircleSize = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/circle_size.value
		$canvas/background/back_effects/Light2D.z_index = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/light_zindex/SpinBox.value
		
		$canvas/background/back_effects/gradient.scale.x = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/gradient_len.value
		$canvas/background/back_effects/gradient.rotation_degrees = $GUI/menus/left/properties/ScrollContainer/VBoxContainer/gradient_rot.value
	#Inputs
	
	#Movement ====
	var move_speed = 0.05
	if Input.is_action_pressed("move_up"):
		$canvas/background/Plexus.move(0,move_speed)
		pass
	if Input.is_action_pressed("move_down"):
		$canvas/background/Plexus.move(0,-move_speed)
		pass
	if Input.is_action_pressed("move_left"):
		$canvas/background/Plexus.move(move_speed,0)
		pass
	if Input.is_action_pressed("move_right"):
		$canvas/background/Plexus.move(-move_speed,0)
		pass
	
	#======
	
	if Input.is_action_just_pressed("settings_pause"):
		$GUI/menus/left/properties/ScrollContainer/VBoxContainer/pause_render.pressed = not($GUI/menus/left/properties/ScrollContainer/VBoxContainer/pause_render.pressed)
		pass
		
	if Input.is_action_just_pressed("fullscreen"):
		
		OS.window_fullscreen = not(OS.window_fullscreen)
	if Input.is_action_just_pressed("exit"):
	#	var canExit = true
		for node in $GUI/popups.get_children(): 
			if node.visible: 
				#canExit = false
				node.visible = false
				
		if $GUI/popups/popup_about.visible:
			$GUI/popups/popup_about.visible = false
			#canExit = false
		if not $GUI.visible:
			if is_rendering: return
			$GUI.visible = true
			#canExit = false
			
			
		#if canExit: get_tree().quit()
	
	if Input.is_action_just_pressed("hide_gui"):
		if is_rendering: return
		#Don't ask why animation
		if $GUI.visible:
			$AnimationPlayer.play("full_canvas")
		else:
			$AnimationPlayer.play("RESET")
	
	#looped stuff
	$GUI/txt/fps.text = String(Engine.get_frames_per_second())+" FPS"



func _on_btn_plexus_color_pressed():
	$GUI/popups/plexus_color.visible = not($GUI/popups/plexus_color.visible)
	$GUI/popups/gradient_color.visible = false
	$GUI/popups/modulate.visible = false
	$GUI/popups/circle_color.visible = false
	$GUI/popups/bgcolor.visible = false
	$GUI/popups/lightcolor.visible = false


func _on_btn_circle_color_pressed():
	$GUI/popups/circle_color.visible = not($GUI/popups/circle_color.visible)
	$GUI/popups/gradient_color.visible = false
	$GUI/popups/modulate.visible = false
	$GUI/popups/plexus_color.visible = false
	$GUI/popups/bgcolor.visible = false
	$GUI/popups/lightcolor.visible = false


func _on_btn_modulate_pressed():
	$GUI/popups/modulate.visible = not($GUI/popups/modulate.visible)
	$GUI/popups/gradient_color.visible = false
	$GUI/popups/plexus_color.visible = false
	$GUI/popups/circle_color.visible = false
	$GUI/popups/bgcolor.visible = false
	$GUI/popups/lightcolor.visible = false


func _on_btn_bgcolor_pressed():
	$GUI/popups/bgcolor.visible = not($GUI/popups/bgcolor.visible)
	$GUI/popups/gradient_color.visible = false
	$GUI/popups/plexus_color.visible = false
	$GUI/popups/circle_color.visible = false
	$GUI/popups/lightcolor.visible = false
	$GUI/popups/modulate.visible = false

func _on_btn_light_color_pressed():
	$GUI/popups/lightcolor.visible = not($GUI/popups/lightcolor.visible)
	$GUI/popups/gradient_color.visible = false
	$GUI/popups/plexus_color.visible = false
	$GUI/popups/circle_color.visible = false
	$GUI/popups/bgcolor.visible = false
	$GUI/popups/modulate.visible = false

func _on_btn_gradient_color_pressed():
	$GUI/popups/gradient_color.visible = not($GUI/popups/gradient_color.visible)
	$GUI/popups/lightcolor.visible = false
	$GUI/popups/plexus_color.visible = false
	$GUI/popups/circle_color.visible = false
	$GUI/popups/bgcolor.visible = false
	$GUI/popups/modulate.visible = false


func _on_btn_about_pressed():
	$GUI/popups/popup_about.popup()

func _on_RichTextLabel_meta_clicked(meta):
	OS.shell_open(meta)


func _on_btn_save_img_pressed():
	if OS.has_feature("HTML5"): 
		$GUI/txt/bottom_status.set_text("[color=red]This function is not supported in HTML demo[/color]")
		return
	
	is_rendering = true
	print("Rendering single image...")
	$AnimationPlayer.play("full_canvas")
	$GUI/menus/left/properties/ScrollContainer/VBoxContainer/pause_render.pressed = true
	yield(get_tree().create_timer(0.5),"timeout")
	
	var img = get_viewport().get_texture().get_data()
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	
	if $GUI/menus/left/properties/ScrollContainer/VBoxContainer/flip_x.pressed: img.flip_x()
	if not $GUI/menus/left/properties/ScrollContainer/VBoxContainer/flip_y.pressed: img.flip_y() #image is default flipped
	
	var texture = ImageTexture.new()
	texture.create_from_image(img)
	$GUI/menus/right/controls/ScrollContainer/VBoxContainer/render_preview.texture = texture
	
	
	#if $GUI/menus/left/properties/ScrollContainer/VBoxContainer/flip_y.pressed: img.flip_y() #doesn't work for some reason
	
	yield(get_tree().create_timer(1),"timeout")
	var path = OS.get_user_data_dir()+"/export/images/"+String(OS.get_unix_time()) +".png"
	img.save_png(path)
	
	$GUI/txt/bottom_status.set_text("Saved: [url]"+path+"[/url]")
	if $GUI/menus/right/controls/ScrollContainer/VBoxContainer/open_after_render.pressed: OS.shell_open(path)
	OS.move_window_to_foreground()
	$GUI/menus/left/properties/ScrollContainer/VBoxContainer/pause_render.pressed = false
	$AnimationPlayer.play("RESET")
	is_rendering = false
	pass


func _on_btn_openpath_pressed():
	if OS.has_feature("HTML5"): 
		$GUI/txt/bottom_status.set_text("[color=red]This function is not supported in HTML demo[/color]")
		return
	OS.shell_open(OS.get_user_data_dir()+"\\export")
	pass


func _on_btn_clear_pressed():
	$canvas/background/Plexus.clearAll()
	pass # Replace with function body.


func _on_btn_reset_pressed():
	get_tree().change_scene("res://Main.tscn")






