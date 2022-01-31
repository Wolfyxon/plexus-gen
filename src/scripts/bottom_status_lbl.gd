extends RichTextLabel

func _ready(): 
	connect("meta_clicked", self, "meta_clicked")

func set_text(text):
	self.bbcode_text = text
	yield(get_tree().create_timer(10),"timeout")
	if self.bbcode_text == text:
		self.text = ""
		
func meta_clicked(meta): 
	OS.shell_open(meta);
