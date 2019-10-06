extends Node2D

var flag_raised = true;
func _ready():
	pass # Replace with function body.
func _input(ev):
	if ev is InputEventKey and ev.scancode == KEY_ENTER and flag_raised:
        flag_raised = false;
        var text = get_node("LineEdit").get_text()
        var le = get_node("LineEdit")
        le.hide()
        get_node("ColorRect/AudioStreamPlayer2D").play()
        yield(get_tree().create_timer(1.0), "timeout")
        increase_text(get_node("ColorRect/Label4"), get_node("ColorRect/Label17"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label4"), get_node("ColorRect/Label17"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label4"), get_node("ColorRect/Label17"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label3"), get_node("ColorRect/Label16"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label3"), get_node("ColorRect/Label16"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label3"), get_node("ColorRect/Label16"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label2"), get_node("ColorRect/Label15"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label2"), get_node("ColorRect/Label15"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label2"), get_node("ColorRect/Label15"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label5"), get_node("ColorRect/Label18"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label5"), get_node("ColorRect/Label18"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label5"), get_node("ColorRect/Label18"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label6"), get_node("ColorRect/Label19"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label6"), get_node("ColorRect/Label19"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label6"), get_node("ColorRect/Label19"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label7"), get_node("ColorRect/Label20"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label7"), get_node("ColorRect/Label20"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label7"), get_node("ColorRect/Label20"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label8"), get_node("ColorRect/Label21"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label8"), get_node("ColorRect/Label21"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label8"), get_node("ColorRect/Label21"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label9"), get_node("ColorRect/Label22"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label9"), get_node("ColorRect/Label22"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label9"), get_node("ColorRect/Label22"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label10"), get_node("ColorRect/Label23"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        swap_text(get_node("ColorRect/Label10"), get_node("ColorRect/Label23"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label10"), get_node("ColorRect/Label23"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label11"), get_node("ColorRect/Label24"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label11"), get_node("ColorRect/Label24"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label11"), get_node("ColorRect/Label24"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label12"), get_node("ColorRect/Label25"), text)
        yield(get_tree().create_timer(0.75), "timeout")
        swap_text(get_node("ColorRect/Label12"), get_node("ColorRect/Label25"), text)
        yield(get_tree().create_timer(2.0), "timeout")
        decrease_text(get_node("ColorRect/Label12"), get_node("ColorRect/Label25"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        yield(get_tree().create_timer(4), "timeout")
        
        le.show()
        get_node("ColorRect/Label2").set_text("")
        get_node("ColorRect/Label3").set_text("")
        get_node("ColorRect/Label4").set_text("")
        get_node("ColorRect/Label5").set_text("")
        get_node("ColorRect/Label6").set_text("")
        get_node("ColorRect/Label7").set_text("")
        get_node("ColorRect/Label8").set_text("")
        get_node("ColorRect/Label9").set_text("")
        get_node("ColorRect/Label10").set_text("")
        get_node("ColorRect/Label11").set_text("")
        get_node("ColorRect/Label12").set_text("")
        get_node("ColorRect/Label13").set_text("")
        get_node("ColorRect/Label14").set_text("")
        flag_raised = true;
func increase_text(label,label2,text):
    var firstChar = text[0]
    var totalString = text
    yield(get_tree().create_timer(.010), "timeout")
    for i in range(text.length(), 40):
        totalString = firstChar + totalString
        #yield(get_tree().create_timer(.001), "timeout")
        if i <= 20:
            label.set_text(totalString)
            #yield(get_tree().create_timer(.001), "timeout")
        else:
            var halfOne = totalString.substr(0, 20)
            var halfTwo = totalString.substr(20, i)
            label.set_text(halfOne)
            label2.set_text(halfTwo)
            #yield(get_tree().create_timer(.005), "timeout")
        yield(get_tree().create_timer(.010), "timeout")
    yield(get_tree().create_timer(.030), "timeout")

func swap_text(label,label2,text):
    var last = text.length() - 1
    var lastChar = text[last]
    var halfOneTest = label.get_text()
    var halfTwoTest = label2.get_text()
    for i in range(text.length(), 40):
        yield(get_tree().create_timer(.017), "timeout")
        halfOneTest = halfOneTest.substr(1, 19) + halfTwoTest.substr(0, 1)
        halfTwoTest = halfTwoTest.substr(1, 19) + lastChar 
        yield(get_tree().create_timer(.0165), "timeout")
        label.set_text(halfOneTest)
        label2.set_text(halfTwoTest)
    #yield(get_tree().create_timer(.010), "timeout")

func decrease_text(label,label2, textLength):
    var halfOne = label.get_text()
    var halfTwo = label2.get_text()
    var totalString = halfOne + halfTwo
    for i in range(1, 40 - textLength + 1):
        if i < 20:
            halfOne = totalString.substr(0, 20)
            halfTwo = totalString.substr(20, 40 - i)
        else:
            halfOne = totalString.substr(0, 40 - i)
            if i == 20:
                halfTwo = ""
                label2.set_text(halfTwo)
        label.set_text(halfOne)
        yield(get_tree().create_timer(.010), "timeout")