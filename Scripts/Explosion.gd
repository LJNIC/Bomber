extends Area2D

<<<<<<< Updated upstream
export(Color) var color = Color.red

=======

export(float) var radius = 50.0
export(Color) var color = Color.red

var center = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 

>>>>>>> Stashed changes
func _draw():
	draw_arc(center, radius, 0, TAU, 360, color)

func _on_Timer_timeout():
	queue_free()

func _on_Explosion_body_entered(body):
	if body.name.begins_with("Enemy"):
		body.queue_free()
