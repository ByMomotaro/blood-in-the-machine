extends Node

#region @onready Variables
@onready var dialogue_runner: DialogueRunner = $DialogueRunner
@onready var in_memory_variable_storage: InMemoryVariableStorage = $InMemoryVariableStorage
@onready var text_line_provider: TextLineProvider = $TextLineProvider
@onready var dialogue_ui: CanvasLayer = $DialogueUi
@onready var line_presenter: LinePresenter = $DialogueUi/LinePresenter
#endregion
#region Variables
var is_dialogue_running := false
#endregion

func _ready() -> void:
	# Applies the set language
	apply_language()
	# Hide the Dialogue UI when the scene is started
	dialogue_ui.hide()
	# Connects the signals for Dialogue Start and Dialogue Complete to functions
	dialogue_runner.onDialogueStart.connect(_on_dialogue_started)
	dialogue_runner.onDialogueComplete.connect(_on_dialogue_completed)


func start_dialogue(node_name: String) -> void:
	if is_dialogue_running:
		return
	else:
		dialogue_runner.StartDialogueForget(node_name)

func _on_dialogue_started() -> void:
	# Sets the condition for the dialogue and shows the UI
	is_dialogue_running = true
	dialogue_ui.show()

func _on_dialogue_completed() -> void:
	# Sets the condition for the dialogue and hides the UI
	is_dialogue_running = false
	dialogue_ui.hide()

func dialogue_running() -> bool:
	return is_dialogue_running

func apply_text_speed() -> void:
	print(line_presenter.lettersPerSecond)
	line_presenter.lettersPerSecond = 5
	print(line_presenter.lettersPerSecond)

func apply_language() -> void:
	text_line_provider.LocaleCode = GameSettings.language
	print(text_line_provider.LocaleCode)
