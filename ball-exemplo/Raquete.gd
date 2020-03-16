extends Sprite

var speed_y = 130

export var margin = 35
export var is_right = false

export var action_up = "ui_up"
export var action_down = "ui_down"

var HALF_SIZE = 90

func _ready():
	position.y = get_viewport_rect().size.y / 2
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	moverRaquete(delta)

	if is_right:
		position.x = get_viewport_rect().size.x - margin
	else:
		position.x = margin
	
func moverRaquete(delta):
	var viewPort = get_viewport_rect()
	
	if Input.is_action_pressed(action_up):
		if position.y - HALF_SIZE >= 0:
			position.y = position.y - speed_y * delta
		
	if Input.is_action_pressed(action_down):
		if position.y + HALF_SIZE <= viewPort.size.y:
			position.y = position.y + speed_y * delta

func hit(object):
	print("Colisao raquete")    
