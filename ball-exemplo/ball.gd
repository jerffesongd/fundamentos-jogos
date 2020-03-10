extends Sprite

var speed_x = 100
var speed_y = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= speed_x * delta
	
	if Input.is_action_pressed("ui_right"):
		position.x += speed_x * delta
	
	if Input.is_action_pressed("ui_up"):
		position.y -= speed_y * delta
	
	if Input.is_action_pressed("ui_down"):
		position.y += speed_y * delta
	
