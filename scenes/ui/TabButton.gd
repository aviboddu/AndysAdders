extends Button

@export var tab: Container
var all_tabs: Array[Container] = []

func _ready() -> void:
	var children = tab.get_parent().get_children()
	all_tabs.assign(children.filter(func (n: Node): return n is Container))
	pressed.connect(enable_tab)

func enable_tab() -> void:
	for t in all_tabs:
		t.visible = false
	tab.visible = true
