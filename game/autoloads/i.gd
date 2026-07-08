@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIItemArmProthese := preload("res://game/inventory_items/item_arm_prothese/inventory_item_item_arm_prothese.gd")
const PIIItemArmDesZeugen := preload("res://game/inventory_items/item_arm_des_zeugen/inventory_item_item_arm_des_zeugen.gd")
const PIIItemPhioleMitGrünerFlüssigkeit := preload("res://game/inventory_items/item_phiole_mit_grüner_flüssigkeit/inventory_item_item_phiole_mit_grüner_flüssigkeit.gd")
const PIIItemPhioleMitNervengift := preload("res://game/inventory_items/item_phiole_mit_nervengift/inventory_item_item_phiole_mit_nervengift.gd")
const PIIInformationKeineAnzeichenFürSelbstmord := preload("res://game/inventory_items/information_keine_anzeichen_für_selbstmord/inventory_item_information_keine_anzeichen_für_selbstmord.gd")
const PIIInformationAusgerissenerArm := preload("res://game/inventory_items/information_ausgerissener_arm/inventory_item_information_ausgerissener_arm.gd")
const PIIInformationTodesursache := preload("res://game/inventory_items/information_todesursache/inventory_item_information_todesursache.gd")
const PIIInformationErgebnisDerAutopsie := preload("res://game/inventory_items/information_ergebnis_der_autopsie/inventory_item_information_ergebnis_der_autopsie.gd")
const PIIInformationMöglicherSelbstmord := preload("res://game/inventory_items/information_möglicher_selbstmord/inventory_item_information_möglicher_selbstmord.gd")
const PIIInformationWirkungDesNervengiftes := preload("res://game/inventory_items/information_wirkung_des_nervengiftes/inventory_item_information_wirkung_des_nervengiftes.gd")
const PIIInformationKaumJemandIstZuSchadenGekommen := preload("res://game/inventory_items/information_kaum_jemand_ist_zu_schaden_gekommen/inventory_item_information_kaum_jemand_ist_zu_schaden_gekommen.gd")
const PIIInformationEsMussEineAndereErklärungGeben := preload("res://game/inventory_items/information_es_muss_eine_andere_erklärung_geben/inventory_item_information_es_muss_eine_andere_erklärung_geben.gd")
const PIIInformationArmZeugeVergiftet := preload("res://game/inventory_items/information_arm_zeuge_vergiftet/inventory_item_information_arm_zeuge_vergiftet.gd")
# ---- classes

# nodes ----
var ItemArmProthese: PIIItemArmProthese : get = get_ItemArmProthese
var ItemArmDesZeugen: PIIItemArmDesZeugen : get = get_ItemArmDesZeugen
var ItemPhioleMitGrünerFlüssigkeit: PIIItemPhioleMitGrünerFlüssigkeit : get = get_ItemPhioleMitGrünerFlüssigkeit
var ItemPhioleMitNervengift: PIIItemPhioleMitNervengift : get = get_ItemPhioleMitNervengift
var InformationKeineAnzeichenFürSelbstmord: PIIInformationKeineAnzeichenFürSelbstmord : get = get_InformationKeineAnzeichenFürSelbstmord
var InformationAusgerissenerArm: PIIInformationAusgerissenerArm : get = get_InformationAusgerissenerArm
var InformationTodesursache: PIIInformationTodesursache : get = get_InformationTodesursache
var InformationErgebnisDerAutopsie: PIIInformationErgebnisDerAutopsie : get = get_InformationErgebnisDerAutopsie
var InformationMöglicherSelbstmord: PIIInformationMöglicherSelbstmord : get = get_InformationMöglicherSelbstmord
var InformationWirkungDesNervengiftes: PIIInformationWirkungDesNervengiftes : get = get_InformationWirkungDesNervengiftes
var InformationKaumJemandIstZuSchadenGekommen: PIIInformationKaumJemandIstZuSchadenGekommen : get = get_InformationKaumJemandIstZuSchadenGekommen
var InformationEsMussEineAndereErklärungGeben: PIIInformationEsMussEineAndereErklärungGeben : get = get_InformationEsMussEineAndereErklärungGeben
var InformationArmZeugeVergiftet: PIIInformationArmZeugeVergiftet : get = get_InformationArmZeugeVergiftet
# ---- nodes

# functions ----
func get_ItemArmProthese() -> PIIItemArmProthese: return get_item_instance("ItemArmProthese")
func get_ItemArmDesZeugen() -> PIIItemArmDesZeugen: return get_item_instance("ItemArmDesZeugen")
func get_ItemPhioleMitGrünerFlüssigkeit() -> PIIItemPhioleMitGrünerFlüssigkeit: return get_item_instance("ItemPhioleMitGrünerFlüssigkeit")
func get_ItemPhioleMitNervengift() -> PIIItemPhioleMitNervengift: return get_item_instance("ItemPhioleMitNervengift")
func get_InformationKeineAnzeichenFürSelbstmord() -> PIIInformationKeineAnzeichenFürSelbstmord: return get_item_instance("InformationKeineAnzeichenFürSelbstmord")
func get_InformationAusgerissenerArm() -> PIIInformationAusgerissenerArm: return get_item_instance("InformationAusgerissenerArm")
func get_InformationTodesursache() -> PIIInformationTodesursache: return get_item_instance("InformationTodesursache")
func get_InformationErgebnisDerAutopsie() -> PIIInformationErgebnisDerAutopsie: return get_item_instance("InformationErgebnisDerAutopsie")
func get_InformationMöglicherSelbstmord() -> PIIInformationMöglicherSelbstmord: return get_item_instance("InformationMöglicherSelbstmord")
func get_InformationWirkungDesNervengiftes() -> PIIInformationWirkungDesNervengiftes: return get_item_instance("InformationWirkungDesNervengiftes")
func get_InformationKaumJemandIstZuSchadenGekommen() -> PIIInformationKaumJemandIstZuSchadenGekommen: return get_item_instance("InformationKaumJemandIstZuSchadenGekommen")
func get_InformationEsMussEineAndereErklärungGeben() -> PIIInformationEsMussEineAndereErklärungGeben: return get_item_instance("InformationEsMussEineAndereErklärungGeben")
func get_InformationArmZeugeVergiftet() -> PIIInformationArmZeugeVergiftet: return get_item_instance("InformationArmZeugeVergiftet")
# ---- functions
