GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex \      �      &�y���ڞu;>��.p   res://Main.tscn �      �W      /ɨv�Y$��>�;   res://default_env.tres  P[      �       um�`�N��<*ỳ�8   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   �a      �      ��fe��6�B��^ U�   res://project.binary��      �      1X�Y2������XL��   res://src/scenes/Plexus.tscn�d      �      @/(��ԃH�vD�M�H    res://src/scripts/Main.gd.remap `�      +       ���ߟ5Ԋd2�̛   res://src/scripts/Main.gdc  Pm      �      �E����⼣Zۗ��+$   res://src/scripts/Plexus.gd.remap   ��      -       ��5"�j}Ɖ6 ����   res://src/scripts/Plexus.gdc�z      �      ��?)�{�''�g�_��$   res://src/scripts/slider.gd.remap   ��      -       [� 2��7_�y��i$   res://src/scripts/slider.gdc��      �      X��nX]��Q9.���\            [gd_scene load_steps=8 format=2]

[ext_resource path="res://src/scripts/Plexus.gd" type="Script" id=1]
[ext_resource path="res://src/scripts/Main.gd" type="Script" id=2]
[ext_resource path="res://src/scripts/slider.gd" type="Script" id=3]
[ext_resource path="res://icon.png" type="Texture" id=4]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.00784314, 0.0117647, 0.290196, 1 )
border_width_left = 1
border_width_top = 1
border_width_right = 1
border_width_bottom = 1
shadow_size = 3

[sub_resource type="Animation" id=3]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("GUI:visible")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ true ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("canvas/Label:visible")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ true ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("canvas/fps:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ true ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("canvas/background:rect_size")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( 610, 556 ) ]
}
tracks/4/type = "value"
tracks/4/path = NodePath("canvas/background:rect_position")
tracks/4/interp = 1
tracks/4/loop_wrap = true
tracks/4/imported = false
tracks/4/enabled = true
tracks/4/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( 255, 26 ) ]
}

[sub_resource type="Animation" id=2]
resource_name = "full_canvas"
length = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath("GUI:visible")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ false ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("canvas/Label:visible")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ false ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("canvas/fps:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ false ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("canvas/background:rect_size")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( 1027, 602 ) ]
}
tracks/4/type = "value"
tracks/4/path = NodePath("canvas/background:rect_position")
tracks/4/interp = 1
tracks/4/loop_wrap = true
tracks/4/imported = false
tracks/4/enabled = true
tracks/4/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( -3, -2 ) ]
}

[node name="Main" type="Node"]
script = ExtResource( 2 )

[node name="canvas" type="Node2D" parent="."]

[node name="background" type="ColorRect" parent="canvas"]
margin_left = 255.0
margin_top = 26.0
margin_right = 865.0
margin_bottom = 582.0
rect_clip_content = true
color = Color( 0, 0, 0, 1 )
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false
}

[node name="Plexus" type="Control" parent="canvas/background"]
visible = false
margin_left = 3.0
margin_top = -6.0
margin_right = 572.0
margin_bottom = 521.0
script = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false
}
maxDots = 100

[node name="update" type="Timer" parent="canvas/background/Plexus"]
process_mode = 0
wait_time = 0.01
autostart = true

[node name="spawn_new" type="Timer" parent="canvas/background/Plexus"]
process_mode = 0
wait_time = 0.01
autostart = true

[node name="destroy" type="Timer" parent="canvas/background/Plexus"]
process_mode = 0
wait_time = 0.01
autostart = true

[node name="move" type="Timer" parent="canvas/background/Plexus"]
wait_time = 0.01
autostart = true

[node name="Label" type="Label" parent="canvas"]
margin_left = 513.0
margin_top = 9.0
margin_right = 855.0
margin_bottom = 23.0
text = "F1 - hide GUI and fill canvas |  F11 - fullscreen mode"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="fps" type="Label" parent="canvas"]
margin_left = 264.0
margin_top = 9.0
margin_right = 391.0
margin_bottom = 23.0
text = "0 FPS"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GUI" type="Node2D" parent="."]
z_index = 1

[node name="menus" type="HBoxContainer" parent="GUI"]
margin_left = 2.0
margin_top = 4.0
margin_right = 1021.0
margin_bottom = 594.0
custom_constants/separation = 617
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false
}

[node name="left" type="VBoxContainer" parent="GUI/menus"]
margin_right = 250.0
margin_bottom = 590.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="properties" type="Panel" parent="GUI/menus/left"]
margin_right = 250.0
margin_bottom = 590.0
rect_min_size = Vector2( 250, 590 )
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ScrollContainer" type="ScrollContainer" parent="GUI/menus/left/properties"]
margin_left = 3.0
margin_top = 3.0
margin_right = 249.0
margin_bottom = 588.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="GUI/menus/left/properties/ScrollContainer"]
margin_right = 164.0
margin_bottom = 423.0
rect_min_size = Vector2( 140, 0 )
custom_constants/separation = 9

[node name="Control" type="Control" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_right = 164.0
margin_bottom = 10.0
rect_min_size = Vector2( 0, 10 )

[node name="max_points" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 19.0
margin_right = 164.0
margin_bottom = 35.0
rect_min_size = Vector2( 110, 0 )
max_value = 500.0
value = 100.0
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points"]
margin_left = 166.0
margin_top = -9.0
margin_right = 240.0
margin_bottom = 15.0
value = 100.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Max points"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="update_itrv" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 44.0
margin_right = 164.0
margin_bottom = 60.0
rect_min_size = Vector2( 120, 0 )
min_value = 0.01
max_value = 2.0
step = 0.01
value = 0.01
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv"]
margin_left = 166.0
margin_top = -9.0
margin_right = 240.0
margin_bottom = 15.0
step = 0.1
value = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Update interval"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="spawn_itrv" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 69.0
margin_right = 164.0
margin_bottom = 85.0
rect_min_size = Vector2( 120, 0 )
min_value = 0.01
max_value = 2.0
step = 0.01
value = 0.01
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv"]
margin_left = 166.0
margin_top = -9.0
margin_right = 240.0
margin_bottom = 15.0
step = 0.1
value = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Spawn interval"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="despawn_itrv" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 94.0
margin_right = 164.0
margin_bottom = 110.0
rect_min_size = Vector2( 120, 0 )
min_value = 0.01
max_value = 10.0
value = 0.01
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv"]
margin_left = 166.0
margin_top = -9.0
margin_right = 240.0
margin_bottom = 15.0
step = 0.01
value = 0.01
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Despawn interval"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="move_itrv" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 119.0
margin_right = 164.0
margin_bottom = 135.0
rect_min_size = Vector2( 120, 0 )
min_value = 0.01
max_value = 10.0
value = 0.01
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/move_itrv"]
margin_left = 166.0
margin_top = -9.0
margin_right = 240.0
margin_bottom = 15.0
step = 0.01
value = 0.01
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/move_itrv"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Move interval"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="line_width" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 144.0
margin_right = 164.0
margin_bottom = 160.0
rect_min_size = Vector2( 120, 0 )
min_value = 0.01
max_value = 1.0
step = 0.05
value = 1.0
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width"]
margin_left = 166.0
margin_top = -9.0
margin_right = 240.0
margin_bottom = 15.0
step = 0.01
value = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Line width"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="update_itrv5" type="HSlider" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
visible = false
margin_top = 200.0
margin_right = 120.0
margin_bottom = 216.0
rect_min_size = Vector2( 110, 0 )
min_value = 0.01
max_value = 10.0
value = 0.01
script = ExtResource( 3 )

[node name="edit" type="SpinBox" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv5"]
margin_left = 117.0
margin_top = -9.0
margin_right = 191.0
margin_bottom = 15.0
value = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv5"]
margin_left = 4.0
margin_top = -12.0
margin_right = 74.0
margin_bottom = 2.0
text = "Update interval"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="update_enabled" type="CheckButton" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 169.0
margin_right = 164.0
margin_bottom = 209.0
pressed = true
text = "Update"

[node name="circles_enabled" type="CheckButton" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 218.0
margin_right = 164.0
margin_bottom = 258.0
text = "Draw circles"

[node name="lines_enabled" type="CheckButton" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 267.0
margin_right = 164.0
margin_bottom = 307.0
pressed = true
text = "Draw lines"

[node name="btn_plexus_color" type="Button" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 316.0
margin_right = 164.0
margin_bottom = 336.0
text = "Select line color"

[node name="btn_circle_color" type="Button" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 345.0
margin_right = 164.0
margin_bottom = 365.0
text = "Select circle color"

[node name="btn_modulate" type="Button" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 374.0
margin_right = 164.0
margin_bottom = 394.0
text = "Select global color"

[node name="btn_bgcolor" type="Button" parent="GUI/menus/left/properties/ScrollContainer/VBoxContainer"]
margin_top = 403.0
margin_right = 164.0
margin_bottom = 423.0
text = "Select background color"

[node name="right" type="VBoxContainer" parent="GUI/menus"]
margin_left = 867.0
margin_right = 1017.0
margin_bottom = 590.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="settings_stuff" type="Panel" parent="GUI/menus/right"]
margin_right = 150.0
margin_bottom = 100.0
rect_min_size = Vector2( 150, 100 )
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ScrollContainer" type="ScrollContainer" parent="GUI/menus/right/settings_stuff"]
margin_left = 3.0
margin_top = 2.0
margin_right = 147.0
margin_bottom = 95.0
follow_focus = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="GUI/menus/right/settings_stuff/ScrollContainer"]
margin_right = 143.887
margin_bottom = 44.0
rect_min_size = Vector2( 143.887, 0 )

[node name="btn_about" type="Button" parent="GUI/menus/right/settings_stuff/ScrollContainer/VBoxContainer"]
margin_right = 143.0
margin_bottom = 20.0
text = "About"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="btn_settings" type="Button" parent="GUI/menus/right/settings_stuff/ScrollContainer/VBoxContainer"]
margin_top = 24.0
margin_right = 143.0
margin_bottom = 44.0
disabled = true
text = "Settings"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="controls" type="Panel" parent="GUI/menus/right"]
margin_top = 104.0
margin_right = 150.0
margin_bottom = 584.0
rect_min_size = Vector2( 150, 480 )
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ScrollContainer" type="ScrollContainer" parent="GUI/menus/right/controls"]
margin_left = 4.0
margin_top = 2.0
margin_right = 147.0
margin_bottom = 476.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="GUI/menus/right/controls/ScrollContainer"]

[node name="popups" type="Node2D" parent="GUI"]
z_index = 5

[node name="plexus_color" type="ColorPicker" parent="GUI/popups"]
visible = false
margin_left = 350.0
margin_top = 70.0
margin_right = 658.0
margin_bottom = 532.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="GUI/popups/plexus_color"]
self_modulate = Color( 0, 0, 0, 1 )
position = Vector2( 151.5, 224.5 )
scale = Vector2( 5.73438, 8.01563 )
z_index = -1
texture = ExtResource( 4 )

[node name="circle_color" type="ColorPicker" parent="GUI/popups"]
visible = false
margin_left = 350.0
margin_top = 70.0
margin_right = 658.0
margin_bottom = 532.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite2" type="Sprite" parent="GUI/popups/circle_color"]
self_modulate = Color( 0, 0, 0, 1 )
position = Vector2( 151.5, 224.5 )
scale = Vector2( 5.73438, 8.01563 )
z_index = -1
texture = ExtResource( 4 )

[node name="modulate" type="ColorPicker" parent="GUI/popups"]
visible = false
margin_left = 354.0
margin_top = 74.0
margin_right = 662.0
margin_bottom = 536.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite2" type="Sprite" parent="GUI/popups/modulate"]
self_modulate = Color( 0, 0, 0, 1 )
position = Vector2( 151.5, 224.5 )
scale = Vector2( 5.73438, 8.01563 )
z_index = -1
texture = ExtResource( 4 )

[node name="bgcolor" type="ColorPicker" parent="GUI/popups"]
visible = false
margin_left = 358.0
margin_top = 78.0
margin_right = 666.0
margin_bottom = 540.0
color = Color( 0, 0, 0, 1 )
edit_alpha = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite2" type="Sprite" parent="GUI/popups/bgcolor"]
self_modulate = Color( 0, 0, 0, 1 )
position = Vector2( 151.5, 224.5 )
scale = Vector2( 5.73438, 8.01563 )
z_index = -1
texture = ExtResource( 4 )

[node name="popup_about" type="WindowDialog" parent="GUI/popups"]
visible = true
margin_left = 326.0
margin_top = 105.0
margin_right = 796.0
margin_bottom = 467.0
window_title = "About"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RichTextLabel" type="RichTextLabel" parent="GUI/popups/popup_about"]
margin_top = 4.0
margin_right = 467.0
margin_bottom = 361.0
focus_mode = 2
bbcode_enabled = true
bbcode_text = "[color=blue]Plexus gen[/color] v1.0
by Wolfyxon
[color=red][url]https://wolfyxon.github.io[/url][/color]

Used stuff:
-Godot Engine [url]https://github.com/godotengine/godot[/url]
-PlexusBackground [url]https://github.com/SpyrexDE/PlexusBackground[/url]"
text = "Plexus gen v1.0
by Wolfyxon
https://wolfyxon.github.io

Used stuff:
-Godot Engine https://github.com/godotengine/godot
-PlexusBackground https://github.com/SpyrexDE/PlexusBackground"
selection_enabled = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/RESET = SubResource( 3 )
anims/full_canvas = SubResource( 2 )

[connection signal="timeout" from="canvas/background/Plexus/update" to="canvas/background/Plexus" method="_on_update_timeout"]
[connection signal="timeout" from="canvas/background/Plexus/spawn_new" to="canvas/background/Plexus" method="_on_spawn_new_timeout"]
[connection signal="timeout" from="canvas/background/Plexus/destroy" to="canvas/background/Plexus" method="_on_destroy_timeout"]
[connection signal="timeout" from="canvas/background/Plexus/move" to="canvas/background/Plexus" method="_on_move_timeout"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/max_points" method="_on_edit_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv" method="_on_edit_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/spawn_itrv" method="_on_edit_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/despawn_itrv" method="_on_edit_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/move_itrv" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/move_itrv" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/move_itrv/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/move_itrv" method="_on_edit_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/line_width" method="_on_edit_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv5" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv5" method="_on_max_points_value_changed"]
[connection signal="value_changed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv5/edit" to="GUI/menus/left/properties/ScrollContainer/VBoxContainer/update_itrv5" method="_on_edit_value_changed"]
[connection signal="pressed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/btn_plexus_color" to="." method="_on_btn_plexus_color_pressed"]
[connection signal="pressed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/btn_circle_color" to="." method="_on_btn_circle_color_pressed"]
[connection signal="pressed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/btn_modulate" to="." method="_on_btn_modulate_pressed"]
[connection signal="pressed" from="GUI/menus/left/properties/ScrollContainer/VBoxContainer/btn_bgcolor" to="." method="_on_btn_bgcolor_pressed"]
[connection signal="pressed" from="GUI/menus/right/settings_stuff/ScrollContainer/VBoxContainer/btn_about" to="." method="_on_btn_about_pressed"]
[connection signal="meta_clicked" from="GUI/popups/popup_about/RichTextLabel" to="." method="_on_RichTextLabel_meta_clicked"]
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [gd_scene load_steps=2 format=2]

[sub_resource type="GDScript" id=1]
script/source = "extends Control

export var maxDots = 70
var positions = []
var sizes = []
var velocities = []

export var enable_circles = false

func _ready():
	for i in maxDots:
		spawnNew(Vector2(rand_range(-100, self.rect_size.x+100), rand_range(-100, self.rect_size.y+100)))

func _process(delta):
	#Spawning
	if positions.size() < maxDots:
		spawnNew()
	#Movement
	for dot in positions:
		positions[positions.find(dot)] += velocities[positions.find(dot)]
	#Destroying
	for dot in positions:
		if dot.x < -200 || dot.y < -200 || dot.x > self.rect_size.x + 200 || dot.y > self.rect_size.y + 200:
			var dotID = positions.find(dot)
			positions.remove(dotID)
			sizes.remove(dotID)
			velocities.remove(dotID)
	update()

func spawnNew(pos = null):
	if pos == null:
		pos = newRandPos()
	var size = rand_range(5, 10)
	var vel = Vector2(rand_range(-1, 1), rand_range(-1, 1))
	positions.append(pos)
	sizes.append(size)
	velocities.append(vel)

func _draw():
	for dot in positions:
		var dotID = positions.find(dot)
		if enable_circles: draw_circle(positions[dotID], sizes[dotID], Color.white)
	#Connecting
	for dot in positions:
		for otherDot in positions:
			if dot.distance_to(otherDot) < 300.0:
				var alpha = clamp(dot.distance_to(otherDot)/120, 0, 2)
				draw_line(dot, otherDot, Color(1,1,1, alpha), 1.0, true)

func newRandPos():
	#Top
	var x1 = rand_range(-200, self.rect_size.x + 200)
	var y1 = rand_range(-200, -100)
	#Bottom
	var x2 = rand_range(-200, self.rect_size.x + 200)
	var y2 = rand_range(self.rect_size.y+ 100, self.rect_size.y + 200)
	#Left
	var x3 = rand_range(-200, -100)
	var y3 = rand_range(-200, self.rect_size.y + 200)
	#Right
	var x4 = rand_range(self.rect_size.x + 100, self.rect_size.x + 200)
	var y4 = rand_range(-200, self.rect_size.y + 200)
	
	var pos = Vector2()
	var choose = int(rand_range(1,5))
	match choose:
		1:
			pos.x = x1
			pos.y = y1
		2:
			pos.x = x2
			pos.y = y2
		3:
			pos.x = x3
			pos.y = y3
		4:
			pos.x = x4
			pos.y = y4
	return pos
"

[node name="PlexusBackground" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 2
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
 GDSC   =      K   �     ���Ӷ���   �����϶�   �����Ŷ�   ���������Ҷ�   �����Ŷ�   ������Ӷ   ��������������Ķ   ���϶���   ���������������Ŷ���   ����׶��   ��������Ӷ��   ������Ŷ   ����   ����Ŷ��   ���¶���   ���������Ŷ�   ��������������Ķ   ������������Ķ��   ���������Ŷ�   ����Ӷ��   �����Ӷ�   ��������Ӷ��   ������������   ������������   ������������   ������϶   ����������������   �������������Ŷ�   ��������������Ҷ   ������Ҷ   �����������Ŷ���   ������������Ҷ��   ��������Ӷ��   �������������Ҷ�   ���������Ķ�   �����Ŷ�   �����������Ķ���   ����Ķ��   �����������Ķ���   �������Ӷ���   ������Ķ   ���������޶�   ����¶��   ���������������������Ҷ�   �嶶   ����������������ض��   ��Ŷ   ���¶���   �����Ӷ�   ��������������������Ҷ��    ���������������������������Ҷ���    ���������������������������Ҷ���   �����������������������Ҷ���   ����������������������Ҷ   �����������Ӷ���   ��������������������Ҷ��   ����������¶   ����ƶ��    �����������������������������Ҷ�   ���׶���   ���������ض�            RESET      
   fullscreen        hide_gui      full_canvas        FPS                                                           	   &   
   6      7      Q      m      �      �      �      �      �      �      �                +     ;     <     V     W     X     a     l     u      v  !   }  "   �  #   �  $   �  %   �  &   �  '   �  (   �  )   �  *   �  +   �  ,   �  -   �  .   �  /   �  0   �  1   �  2   �  3   
  4     5      6   !  7   "  8   (  9   =  :   H  ;   S  <   ^  =   _  >   `  ?   f  @   {  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   3YYYY0�  PQV�  W�  �  �  T�  �  W�  T�  P�  QYY0�  P�	  QV�  W�  �  �  T�
  W�  �  T�
  �  �  W�  �  �  T�  W�  �  �  �  �  �  �  T�  �  W�  �  �  �  T�  W�  �  �  �  �  �  �  T�  �  W�  �  �  �  T�  W�  �  �  �  �  �  �  T�  �  W�  �  �  �  T�  W�  �  �  �  �  �  �  T�  �  �  W�  �  �  T�  W�  �  �  �  �  �  �  T�  �  W�  �  �  T�  W�  �  �  �  �  �  �  T�  �  W�  �  �  T�   W�  �  �  �  �  �  �!  T�  �  �  W�  �  �  T�"  W�  �#  �$  T�%  �  W�  �  �  T�&  W�  �#  �&  T�%  �  W�  �  �  T�'  W�  �#  �'  T�%  �  W�  �  T�%  W�  �#  �(  T�%  �  �  W�  �  �  T�)  W�  �  �  �  �  �  �)  T�  �  �  �  &�*  T�+  P�  QV�  �,  T�-  P�,  T�-  Q�  &�*  T�+  P�  QV�  �  &W�  T�  V�  W�  T�  P�  Q�  (V�  W�  T�  P�  Q�  �  �  W�  �.  T�/  �  P�0  T�1  PQQ�  YYY0�2  PQV�  W�  �#  �$  T�  PW�  �#  �$  T�  Q�  W�  �#  �'  T�  �  �  W�  �#  �&  T�  �  �  W�  �#  �(  T�  �  YYY0�3  PQV�  W�  �#  �&  T�  PW�  �#  �&  T�  Q�  W�  �#  �'  T�  �  �  W�  �#  �$  T�  �  �  W�  �#  �(  T�  �  YYY0�4  PQV�  W�  �#  �'  T�  PW�  �#  �'  T�  Q�  W�  �#  �$  T�  �  �  W�  �#  �&  T�  �  �  W�  �#  �(  T�  �  YYY0�5  PQV�  W�  �#  �(  T�  PW�  �#  �(  T�  Q�  W�  �#  �$  T�  �  �  W�  �#  �&  T�  �  �  W�  �  �  �  �  �  �6  T�  �  YYY0�7  PQV�  W�  �#  �8  T�9  PQYY0�:  P�;  QV�  �,  T�<  P�;  QY`    GDSC   /      j   �     ������ڶ   ������Ŷ   ��������Ŷ��   ����Ŷ��   ���������Ŷ�   �������������Ŷ�   �����������Ŷ���   ���������޶�   ���������Ķ�   �����������Ķ���   ��������Ӷ��   �����϶�   ߶��   ������������   ��������Ӷ��   ζ��   ϶��   �������Ŷ���   ����׶��   ��Ŷ   ���������Ŷ�   ���Ӷ���   ��ڶ   �����Ҷ�   ��������   ��¶   ����򶶶   ���Ҷ���   ����������Ӷ   �������¶���   ����������ٶ   ��������Ӷ��   ·��   χ��   ΄��   τ��   ΅��   υ��   ΂��   ς��   �����Ӷ�   �����������������¶�   �����Ӷ�   ��������������������¶��   ������������������¶   �����Ӷ�   ���������������¶���   F                     �?         d                
        �C   �                                                                         	      
                &      ,      -      3      4      C      R      S      Y      Z      `      f      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /      0   &  1   3  2   4  3   :  4   ;  5   L  6   X  7   Y  8   j  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J      K     L     M     N     O     P     Q     R      S   &  T   -  U   .  V   4  W   >  X   B  Y   C  Z   D  [   E  \   F  ]   L  ^   R  _   z  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   3YYYYY8;�  Y;�  LMY;�  LMY;�  LMYYY8;�  �  Y8;�  �  YY8;�  �  YY8;�  �  P�  R�  R�  R�  QY8;�	  �  P�  R�  R�  R�  QYY8;�
  �  YY0�  PQV�  )�  �  V�  �  P�  P�(  P�  RT�  T�  �  QR�(  P�  RT�  T�  �  QQQYY0�  P�  QV�  -YYY0�  P�  �  QV�  &�  �  V�  �  �  PQ�  ;�  �(  P�  R�  Q�  ;�  �  P�(  P�  R�  QR�(  P�  R�  QQ�  �  T�  P�  Q�  �  T�  P�  Q�  �  T�  P�  QYY0�  PQV�  )�  �  V�  ;�  �  T�  P�  Q�  &�  V�  P�  L�  MR�  L�  MR�	  Q�  �  )�  �  V�  )�  �  V�  &�  T�  P�  Q	�	  V�  �  &�  �  V�  �  P�  R�  R�  R�  R�  QYY0�  PQV�  �  ;�   �(  P�
  RT�  T�  �
  Q�  ;�!  �(  P�
  R�  Q�  �  ;�"  �(  P�
  RT�  T�  �
  Q�  ;�#  �(  PT�  T�  �  RT�  T�  �
  Q�  �  ;�$  �(  P�
  R�  Q�  ;�%  �(  P�
  RT�  T�  �
  Q�  �  ;�&  �(  PT�  T�  �  RT�  T�  �
  Q�  ;�'  �(  P�
  RT�  T�  �
  Q�  �  ;�  �  PQ�  ;�(  �  P�(  P�  R�  QQ�  /�(  V�  �  V�  �  T�  �   �  �  T�  �!  �  �  V�  �  T�  �"  �  �  T�  �#  �  �  V�  �  T�  �$  �  �  T�  �%  �  �  V�  �  T�  �&  �  �  T�  �'  �  .�  YYY0�)  PQV�  &�
  V�*  PQYY0�+  PQV�  &�  T�  PQ	�  V�  �  PQYYYYY0�,  PQV�  )�  �  V�  &�  T�  	�
  �  T�  	�
  �  T�  T�  T�  �
  �  T�  T�  T�  �
  V�  ;�  �  T�  P�  Q�  �  T�-  P�  Q�  �  T�-  P�  Q�  �  T�-  P�  Q�  YYY0�.  PQV�  )�  �  V�  �  L�  T�  P�  QM�  L�  T�  P�  QMY`       GDSC             N      ������Ķ   �����϶�   ���¶���   ��������Ӷ��   ��������Ӷ��    ���������������������������Ҷ���   ���������������������Ҷ�   ����Ӷ��                         
                        !   	   %   
   &      1      8      9      :      F      L      3YYY0�  PQV�  W�  T�  T�  �  W�  T�  T�  �  �  �  PQ�  �  PQYY0�  P�  T�  QV�  W�  T�  �  YYY0�  P�  W�  T�  QV�  T�  �  Y`              [remap]

path="res://src/scripts/Main.gdc"
     [remap]

path="res://src/scripts/Plexus.gdc"
   [remap]

path="res://src/scripts/slider.gdc"
   �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         plexusGenerator    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/stretch/mode         2d     editor_plugins/enabled             input/fullscreen�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   &     physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt          shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            deadzone      ?   input/hide_gui�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            deadzone      ?)   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres      