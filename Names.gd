extends Node2D

func _ready():
	pass # Replace with function body.
func _input(ev):
	if ev is InputEventKey and ev.scancode == KEY_ENTER:
        var txtLabel = get_node("LineEdit").get_text()
        var le = get_node("LineEdit")
        get_node("LineEdit").hide()
        var label2 = get_node("Label2")
        label2.set_text(txtLabel)
        var txtLabelLength = txtLabel.length() - 1
        var lastChar = txtLabel[txtLabelLength]
        var firstChar = txtLabel[0]
        get_node("ColorRect/AudioStreamPlayer2D").play()
        txtLabel = firstChar + txtLabel + lastChar
        label2.set_text(txtLabel)