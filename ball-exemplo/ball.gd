extends Sprite

export var speed_x = 100
export var speed_y = 100

var direction_y = 1
var direction_x = 1

const HALF_SIZE = 15

func _ready():
	$BallArea.connect("area_entered", self, "hit")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var viewPort = get_viewport_rect()
	
	if position.y + HALF_SIZE >= viewPort.size.y:
		direction_y *= -1
	elif position.y - HALF_SIZE <= 0:
		direction_y *= -1
		
	position.y = position.y - speed_y * delta * direction_y	
	position.x = position.x - speed_x * delta * direction_x
	
	
	
func hit(object):
	direction_x *= -1       
	
