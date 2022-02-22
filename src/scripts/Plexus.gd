extends Control

#Source: https://github.com/SpyrexDE/PlexusBackground
#Modifed by Wolfyxon

export var maxDots = 70
var positions = []
var sizes = []
var velocities = []
var alphas = []

# ====

export var enable_circles = false
export var enable_lines = true
export var squared = false

export var rainbow_lines = true
export var rainbow_circles = true

export var line_width = 1.0 #doesn't work, also when it's bigger than 1 it lags a lot

export var line_color = Color(1,1,1,1)
export var circle_color = Color(1,1,1,1)

export var plusSpeed = 0
export var speed = 1
export var plusCircleSize = 0.2

export var canUpdate = true
export var can_move = true

# ====
func _ready():
	for i in maxDots:
		spawnNew(Vector2(rand_range(-100, self.rect_size.x+100), rand_range(-100, self.rect_size.y+100)))

func _process(delta):
	pass

var fadein_thread = Thread.new()
func spawnNew(pos = null):
	yield(get_tree().create_timer(rand_range(0,5)),"timeout")
	if pos == null:
		pos = newRandPos()
	var size = rand_range(5, 10)
	var vel = Vector2(rand_range(-1, 1), rand_range(-1, 1))
	positions.append(pos)
	sizes.append(size)
	velocities.append(vel)
	alphas.append(0)
	var dotID = positions.find_last(pos)
	var random_max = rand_range(0.1,1)
	
	while float(alphas[dotID-1]) < random_max:
		yield(get_tree().create_timer(0.01),"timeout")
		if dotID < alphas.size():
			alphas[dotID-1] += 0.01
		else:
			break
func _draw():
	#Connecting
	for dot in positions:
		var dotID = positions.find_last(dot)
		for otherDot in positions:
			if dot.distance_to(otherDot) < 300.0:
				#var alpha = clamp(dot.distance_to(otherDot)/120, 0, 2)
				if enable_lines: 
					var tmp_otherDot = null
					if squared:
						if rand_range(-1,1) > 0:
							tmp_otherDot = Vector2(dot.x + rand_range(-200,200),dot.y)
						else:
							tmp_otherDot = Vector2(dot.x,dot.y + rand_range(-200,200))
						pass
					else: tmp_otherDot = otherDot
					
					var tmpColor
					if rainbow_lines:
						tmpColor = Color(rand_range(0,1),rand_range(0,1),rand_range(0,1),rand_range(1,0.1))
					else:
						tmpColor = line_color
						tmpColor.a = float(alphas[dotID-1])
					draw_line(dot,tmp_otherDot,tmpColor, line_width, true) #draw_line(dot, otherDot, Color(1,1,1, alpha), 1.0, true)

	for dot in positions:
		var dotID = positions.find_last(dot)
		var tmpColor
		if rainbow_circles:
			tmpColor = Color(rand_range(0,1),rand_range(0,1),rand_range(0,1),1)
		else: 
			tmpColor = circle_color
			
			
		if enable_circles: 
			draw_circle(positions[dotID], sizes[dotID]*plusCircleSize, tmpColor)

func move(x,y):
	yield(get_tree().create_timer(0.1),"timeout")
	for i in range(velocities.size()):
		velocities[i] = Vector2(velocities[i].x+x,velocities[i].y+y)


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
			var dotID = positions.find_last(dot)
			if dotID < alphas.size():
				while alphas[dotID-1] > 0: 
					yield(get_tree().create_timer(0.01),"timeout")
					if dotID < alphas.size(): alphas[dotID-1] -= 1
					else:
						break
				
			alphas.remove(dotID-1)
			positions.remove(dotID)
			sizes.remove(dotID)
			velocities.remove(dotID)
	
func clearAll():
		for dot in positions:
			var dotID = positions.find_last(dot)
			positions.remove(dotID)
			sizes.remove(dotID)
			velocities.remove(dotID)
		positions = []
		sizes = []
		velocities = []
			
func _on_move_timeout():
	for dot in positions:
		if can_move:
			positions[positions.find(dot)] += Vector2(
				velocities[positions.find(dot)].x * speed,
				velocities[positions.find(dot)].y * speed
			) #positions[positions.find(dot)] += velocities[positions.find(dot)]
