@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCPlayerCharacter := preload("res://game/characters/player_character/character_player_character.gd")
const PCPyrSoldierA := preload("res://game/characters/pyr_soldier_a/character_pyr_soldier_a.gd")
const PCPyrSoldierB := preload("res://game/characters/pyr_soldier_b/character_pyr_soldier_b.gd")
const PCMarlon := preload("res://game/characters/marlon/character_marlon.gd")
const PCBran := preload("res://game/characters/bran/character_bran.gd")
const PCZeugeA := preload("res://game/characters/zeuge_a/character_zeuge_a.gd")
const PCZeugeB := preload("res://game/characters/zeuge_b/character_zeuge_b.gd")
const PCGrandma := preload("res://game/characters/grandma/character_grandma.gd")
# ---- classes

# nodes ----
var PlayerCharacter: PCPlayerCharacter : get = get_PlayerCharacter
var PyrSoldierA: PCPyrSoldierA : get = get_PyrSoldierA
var PyrSoldierB: PCPyrSoldierB : get = get_PyrSoldierB
var Marlon: PCMarlon : get = get_Marlon
var Bran: PCBran : get = get_Bran
var ZeugeA: PCZeugeA : get = get_ZeugeA
var ZeugeB: PCZeugeB : get = get_ZeugeB
var Grandma: PCGrandma : get = get_Grandma
# ---- nodes

# functions ----
func get_PlayerCharacter() -> PCPlayerCharacter: return get_runtime_character("PlayerCharacter")
func get_PyrSoldierA() -> PCPyrSoldierA: return get_runtime_character("PyrSoldierA")
func get_PyrSoldierB() -> PCPyrSoldierB: return get_runtime_character("PyrSoldierB")
func get_Marlon() -> PCMarlon: return get_runtime_character("Marlon")
func get_Bran() -> PCBran: return get_runtime_character("Bran")
func get_ZeugeA() -> PCZeugeA: return get_runtime_character("ZeugeA")
func get_ZeugeB() -> PCZeugeB: return get_runtime_character("ZeugeB")
func get_Grandma() -> PCGrandma: return get_runtime_character("Grandma")
# ---- functions
