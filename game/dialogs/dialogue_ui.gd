extends CanvasLayer

@onready var continue_indicator_button: TextureButton = %ContinueIndicatorButton
@onready var line_presenter_button_handler: Control = $LinePresenter/LinePresenterButtonHandler

func _unhandled_input(event: InputEvent) -> void:
	if !visible:
		return

	if event.is_action_pressed("dialogue_continue"):
		line_presenter_button_handler.RequestContinue()
		get_viewport().set_input_as_handled()
