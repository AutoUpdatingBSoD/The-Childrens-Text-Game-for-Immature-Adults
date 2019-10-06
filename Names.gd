extends Node2D

func _ready():
	pass # Replace with function body.
func _input(ev):
	if ev is InputEventKey and ev.scancode == KEY_ENTER:
        var text = get_node("LineEdit").get_text()
        var le = get_node("LineEdit")
        le.hide()
        get_node("ColorRect/AudioStreamPlayer2D").play()
        yield(get_tree().create_timer(1.0), "timeout")
        increase_text(get_node("ColorRect/Label4"), get_node("ColorRect/Label17"), text)

func increase_text(label,label2,text):
    var firstChar = text[0]
    var totalString = text
    for i in range(text.length(), 40):
        totalString = firstChar + totalString
        if i <= 20:
            label.set_text(totalString)
        else:
            var halfOne = totalString.substr(0, 20)
            var halfTwo = totalString.substr(20, i)
            label.set_text(halfOne)
            label2.set_text(halfTwo)
        yield(get_tree().create_timer(.010), "timeout")
    yield(get_tree().create_timer(.030), "timeout")
    swap_text(get_node("ColorRect/Label4"), get_node("ColorRect/Label17"), text)

func swap_text(label,label2,text):
    var halfOne = label.get_text()
    var halfTwo = label2.get_text()
    var totalString = halfOne + halfTwo
    var last = text.length() - 1
    var lastChar = text[last]
    for i in range(text.length(), 40):
        #if i <= 10: 
		
        totalString = label.get_text() + label2.get_text() 
        var testhalfOne = totalString.substr(1,20)
        var testhalfTwo = totalString.substr(21,20) + lastChar
        yield(get_tree().create_timer(.010), "timeout")
        label.set_text(testhalfOne)
        label2.set_text(testhalfTwo)
    #yield(get_tree().create_timer(.010), "timeout")
    #decrease_text(get_node("ColorRect/Label4"), get_node("ColorRect/Label17"), text.length())

func decrease_text(label,label2, textLength):
    var halfOne = label.get_text()
    var halfTwo = label2.get_text()
    var totalString = halfOne + halfTwo
    for i in range(textLength - 1, 40):
        if i > 20:
            halfOne = totalString.substr(1, 19)
            halfTwo = totalString.substr(21, 40 - i)
        else:
            halfOne = totalString.substr(0, 40 - i)
            if i == 20:
                halfTwo = ""
                label2.set_text(halfTwo)
        label.set_text(halfOne)
        yield(get_tree().create_timer(.010), "timeout")