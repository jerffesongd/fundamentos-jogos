extends Sprite

var speed_y = 130

export var margin = 35
export var is_right = false

export var action_up = "ui_up"
export var action_down = "ui_down"

func _ready():
	
	position.y = get_viewport_rect().size.y / 2
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if is_right:
		position.x = get_viewport_rect().size.x - margin
	else:
		position.x = margin
	
	if Input.is_action_pressed(action_up):
		position.y = position.y - speed_y * delta
		
	if Input.is_action_pressed(action_down):
		position.y = position.y + speed_y * delta
