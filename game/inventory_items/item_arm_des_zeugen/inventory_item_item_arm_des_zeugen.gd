# @popochiu-docs-ignore-class
extends PopochiuInventoryItem

const Data := preload('inventory_item_item_arm_des_zeugen_state.gd')

var state: Data = load("res://game/inventory_items/item_arm_des_zeugen/inventory_item_item_arm_des_zeugen.tres")


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
	if _item == I.InformationTodesursache:
		I.ItemArmDesZeugen.remove()
		I.InformationTodesursache.remove()
		await C.player.say("Wenn das Nervengift die Todesursache gewesen ist, dann muss der Zeuge ebenfalls mit diesem Gift in Berührung gekommen sein.")
		I.InformationDerArmDesZeugenIstEbenfallsVergiftet.add()


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
