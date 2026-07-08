extends Node

var arm_picked_up := false

func _ready() -> void:
	I.item_added.connect(play_pickup_sound)

func play_pickup_sound(item: PopochiuInventoryItem, animate: bool) -> void:
	SoundManager.play_sfx("get_item")
