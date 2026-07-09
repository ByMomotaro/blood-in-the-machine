# @popochiu-docs-ignore-class
extends PopochiuInventoryItem

const Data := preload('inventory_item_information_wirkung_des_nervengiftes_state.gd')

var state: Data = load("res://game/inventory_items/information_wirkung_des_nervengiftes/inventory_item_information_wirkung_des_nervengiftes.tres")


#region Virtual ####################################################################################
# Called when the item is clicked in the inventory
func _on_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()


# Called when the item is right-clicked in the inventory
func _on_right_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()


# Called when the item is middle-clicked in the inventory
func _on_middle_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()


# Called when the item is clicked while another inventory item is selected
func _on_item_used(_item: PopochiuInventoryItem) -> void:
	if _item == I.InformationErgebnisDerAutopsie:
		I.InformationWirkungDesNervengiftes.remove()
		I.InformationErgebnisDerAutopsie.remove()
		C.player.animation_player.play("interact")
		await C.player.say("Jetzt ist es sicher! Das Nervengift muss die Ursache für den Tod gewesen sein!")
		I.InformationTodesursache.add()


# Called when the item is added to the inventory
func _on_added_to_inventory() -> void:
	# Replace the call to `super()` to implement custom behavior.
	# Calling `super()` preserves default behavior as well.
	super()


# Called when the item is discarded from the inventory
func _on_discard() -> void:
	# Replace the call to `super()` to implement custom behavior.
	# Calling `super()` preserves default behavior as well.
	super()


#endregion
