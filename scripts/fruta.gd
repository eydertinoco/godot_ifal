extends Area2D

@onready var animation := $AnimatedSprite2D as AnimatedSprite2D

var fruta := 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	animation.play("collect")
	await $CollisionShape2D.call_deferred("queue_free")
	Globals.frutas += fruta
	print(Globals.frutas)

func _on_animated_sprite_2d_animation_finished():
	if animation.animation == "collect":
		queue_free()
	
