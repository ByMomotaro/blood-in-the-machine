@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIPhioleMitGrünerFlüssigkeit := preload("res://game/inventory_items/phiole_mit_grüner_flüssigkeit/inventory_item_phiole_mit_grüner_flüssigkeit.gd")
const PIIArmProthese := preload("res://game/inventory_items/arm_prothese/inventory_item_arm_prothese.gd")
const PIIArmDesZeugen := preload("res://game/inventory_items/arm_des_zeugen/inventory_item_arm_des_zeugen.gd")
# ---- classes

# nodes ----
var PhioleMitGrünerFlüssigkeit: PIIPhioleMitGrünerFlüssigkeit : get = get_PhioleMitGrünerFlüssigkeit
var ArmProthese: PIIArmProthese : get = get_ArmProthese
var ArmDesZeugen: PIIArmDesZeugen : get = get_ArmDesZeugen
# ---- nodes

# functions ----
func get_PhioleMitGrünerFlüssigkeit() -> PIIPhioleMitGrünerFlüssigkeit: return get_item_instance("PhioleMitGrünerFlüssigkeit")
func get_ArmProthese() -> PIIArmProthese: return get_item_instance("ArmProthese")
func get_ArmDesZeugen() -> PIIArmDesZeugen: return get_item_instance("ArmDesZeugen")
# ---- functions
