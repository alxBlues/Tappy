extends CharacterBody2D

const GRAVITY: float  = 780.0
@onready var sprite = $Sprite


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	
	move_and_slide()
	if is_on_floor() == true:
		die()

func die() -> void:
	sprite.stop()
	set_physics_process(false)
