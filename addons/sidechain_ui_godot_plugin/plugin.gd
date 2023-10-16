@tool
extends EditorPlugin

var dock

func _enter_tree():
	dock = preload("res://addons/sidechain_ui_godot_plugin/dock.tscn").instantiate()
	add_control_to_dock(EditorPlugin.DOCK_SLOT_RIGHT_BL, dock)

func _exit_tree():
	remove_control_from_docks(dock)
	dock.queue_free()
		
		
func _get_plugin_name():
	return "Sidechain UI"
	
	
