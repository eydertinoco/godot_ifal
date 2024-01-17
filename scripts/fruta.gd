extends Area2D

var quantidadeColetada = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body: Node2D) -> void:
	$AnimatedSprite2D.play("collect")
	quantidadeColetada += 1
	print(quantidadeColetada)
	queue_free()
