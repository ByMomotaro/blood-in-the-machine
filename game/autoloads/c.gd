@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCPlayerCharacter := preload("res://game/characters/player_character/character_player_character.gd")
# ---- classes

# nodes ----
var PlayerCharacter: PCPlayerCharacter : get = get_PlayerCharacter
# ---- nodes

# functions ----
func get_PlayerCharacter() -> PCPlayerCharacter: return get_runtime_character("PlayerCharacter")
# ---- functions
