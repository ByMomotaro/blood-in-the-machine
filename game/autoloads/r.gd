@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRAExhebition := preload("res://game/rooms/a_exhebition/room_a_exhebition.gd")
const PRADeadBody := preload("res://game/rooms/a_dead_body/room_a_dead_body.gd")
const PRCutsceneOne := preload("res://game/rooms/cutscene_one/room_cutscene_one.gd")
const PRCutsceneTwo := preload("res://game/rooms/cutscene_two/room_cutscene_two.gd")
const PRGApartment := preload("res://game/rooms/g_apartment/room_g_apartment.gd")
const PRGTable := preload("res://game/rooms/g_table/room_g_table.gd")
# ---- classes

# nodes ----
var AExhebition: PRAExhebition : get = get_AExhebition
var ADeadBody: PRADeadBody : get = get_ADeadBody
var CutsceneOne: PRCutsceneOne : get = get_CutsceneOne
var CutsceneTwo: PRCutsceneTwo : get = get_CutsceneTwo
var GApartment: PRGApartment : get = get_GApartment
var GTable: PRGTable : get = get_GTable
# ---- nodes

# functions ----
func get_AExhebition() -> PRAExhebition: return get_runtime_room("AExhebition")
func get_ADeadBody() -> PRADeadBody: return get_runtime_room("ADeadBody")
func get_CutsceneOne() -> PRCutsceneOne: return get_runtime_room("CutsceneOne")
func get_CutsceneTwo() -> PRCutsceneTwo: return get_runtime_room("CutsceneTwo")
func get_GApartment() -> PRGApartment: return get_runtime_room("GApartment")
func get_GTable() -> PRGTable: return get_runtime_room("GTable")
# ---- functions
