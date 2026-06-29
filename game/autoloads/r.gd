@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRAExhebition := preload("res://game/rooms/a_exhebition/room_a_exhebition.gd")
# ---- classes

# nodes ----
var AExhebition: PRAExhebition : get = get_AExhebition
# ---- nodes

# functions ----
func get_AExhebition() -> PRAExhebition: return get_runtime_room("AExhebition")
# ---- functions
