extends CharacterBody2D

var input_movement = Vector2.ZERO
var speed = 60

# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	move()
	
func move():
	# Add the gravity.
	input_movement = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	# Handle jump.
	if input_movement !=Vector2.ZERO:
		velocity = input_movement*speed
	if input_movement == Vector2.ZERO:
		velocity = Vector2.ZERO

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	move_and_slide()
