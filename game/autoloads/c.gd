@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCPlayerCharacter := preload("res://game/characters/player_character/character_player_character.gd")
const PCPyrSoldierA := preload("res://game/characters/pyr_soldier_a/character_pyr_soldier_a.gd")
const PCPyrSoldierB := preload("res://game/characters/pyr_soldier_b/character_pyr_soldier_b.gd")
const PCMarlon := preload("res://game/characters/marlon/character_marlon.gd")
# ---- classes

# nodes ----
var PlayerCharacter: PCPlayerCharacter : get = get_PlayerCharacter
var PyrSoldierA: PCPyrSoldierA : get = get_PyrSoldierA
var PyrSoldierB: PCPyrSoldierB : get = get_PyrSoldierB
var Marlon: PCMarlon : get = get_Marlon
# ---- nodes

# functions ----
func get_PlayerCharacter() -> PCPlayerCharacter: return get_runtime_character("PlayerCharacter")
func get_PyrSoldierA() -> PCPyrSoldierA: return get_runtime_character("PyrSoldierA")
func get_PyrSoldierB() -> PCPyrSoldierB: return get_runtime_character("PyrSoldierB")
func get_Marlon() -> PCMarlon: return get_runtime_character("Marlon")
# ---- functions
