extends Control

@onready var FrutaCounter = $MarginContainer/FrutaContainer/FrutaCounter as Label

# Called when the node enters the scene tree for the first time.
func _ready():
	FrutaCounter.text = str(Globals.frutas) + "/4"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	FrutaCounter.text = str(Globals.frutas) + "/4"
