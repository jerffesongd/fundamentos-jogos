extends Sprite

var elapsed_time = 0
var direction    = 1
# Chamado a cada frame. 'delta' 
# é o tempo desde o último frame
func _process(delta):
	elapsed_time += delta
	
	scale.x = 0.1 + sin(elapsed_time) * 2
	scale.y = 0.1 + sin(elapsed_time) * 2
	if position.x > 300:
		direction  = -1
		position.x = 200
	else:
		direction = 1
		
	position.x += 50 * delta * direction
