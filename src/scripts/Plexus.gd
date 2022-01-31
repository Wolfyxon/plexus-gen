extends Control

#Source: https://github.com/SpyrexDE/PlexusBackground
#Modifed by Wolfyxon

export var maxDots = 70
var positions = []
var sizes = []
var velocities = []

# ====
export var enable_circles = false
export var enable_lines = true

export var line_width = 1.0

export var line_color = Color(1,1,1,1)
export var circle_color = Color(1,1,1,1)

export var canUpdate = true
# ====
func _ready():
	for i in maxDots:
		spawnNew(Vector2(rand_range(-100, self.rect_size.x+100), rand_range(-100, self.rect_size.y+100)))

func _process(delta):
	pass


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
		if enable_circles: draw_circle(positions[dotID], sizes[dotID], circle_color)
	#Connecting
	for dot in positions:
		for otherDot in positions:
			if dot.distance_to(otherDot) < 300.0:
				#var alpha = clamp(dot.distance_to(otherDot)/120, 0, 2)
				if enable_lines == true: 
					draw_line(dot, otherDot,line_color, line_width, true) #draw_line(dot, otherDot, Color(1,1,1, alpha), 1.0, true)

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


func _on_update_timeout():
	if canUpdate: update()

func _on_spawn_new_timeout():
	if positions.size() < maxDots:
		spawnNew()


func _on_destroy_timeout():
	for dot in positions:
		if dot.x < -200 || dot.y < -200 || dot.x > self.rect_size.x + 200 || dot.y > self.rect_size.y + 200:
			var dotID = positions.find(dot)
			positions.remove(dotID)
			sizes.remove(dotID)
			velocities.remove(dotID)
	
func clearAll():
		for dot in positions:
			var dotID = positions.find(dot)
			positions.remove(dotID)
			sizes.remove(dotID)
			velocities.remove(dotID)
		positions = []
		sizes = []
		velocities = []
			
func _on_move_timeout():
	for dot in positions:
		positions[positions.find(dot)] += velocities[positions.find(dot)]
