@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIExhebitionBackground := preload("res://game/inventory_items/exhebition_background/inventory_item_exhebition_background.gd")
const PIIIdle := preload("res://game/inventory_items/idle/inventory_item_idle.gd")
# ---- classes

# nodes ----
var ExhebitionBackground: PIIExhebitionBackground : get = get_ExhebitionBackground
var Idle: PIIIdle : get = get_Idle
# ---- nodes

# functions ----
func get_ExhebitionBackground() -> PIIExhebitionBackground: return get_item_instance("ExhebitionBackground")
func get_Idle() -> PIIIdle: return get_item_instance("Idle")
# ---- functions
