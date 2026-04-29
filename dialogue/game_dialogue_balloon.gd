extends BaseGameDialogueBalloon
@onready var emotes_panel: Panel = $Balloon/Panel

func start(with_dialogue_resource: DialogueResource = null, title: String = "", extra_game_states: Array = []) -> void:
    super.start(dialogue_resource, title, extra_game_states)
    emotes_panel.play_emote("Emote_12_talking")
        
func next(next_id: String) -> void:
    super.next(next_id)
    emotes_panel.play_emote("Emote_12_talking")
