extends HSlider


func _ready():
	$edit.max_value = self.max_value
	$edit.min_value = self.min_value
	
	_on_max_points_value_changed()
	_on_edit_value_changed()

func _on_max_points_value_changed(value=self.value):
	$edit.value = value


func _on_edit_value_changed(value=$edit.value):
	self.value = value
