class_name SceneDataResource
extends NodeDataResource

@export var node_name: String
@export var scene_file_path: String

func _save_data(node: Node2D) -> NodeDataResource:
    super._save_data(node)
    
    node_name = node.name
    if "scene_file_path" in node:
        scene_file_path = node.scene_file_path
    
    return self

func _load_data(window: Window) -> void:
    var parent_node: Node2D
    var scene_node: Node2D
    
    if parent_node_path != null:
        parent_node = window.get_node_or_null(parent_node_path)
    
    if scene_file_path != null and scene_file_path != "":
        var scene_file_resource: Resource = load(scene_file_path)
        if scene_file_resource:
            scene_node = scene_file_resource.instantiate() as Node2D
    
    if parent_node != null and scene_node != null:
        scene_node.global_position = global_position
        parent_node.add_child(scene_node)
