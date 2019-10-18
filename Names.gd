extends Node2D

var flag_raised = true;
func _ready():
    OS.window_fullscreen = true;
    #var x = OS.get_real_window_size().x
    #var y = OS.get_real_window_size().y
    #print(x)
    #print(y)
    #get_node("LineEdit").margin_right = x
    #get_node("LineEdit").margin_bottom = y
    #get_node("ColorRect").margin_right = x
    #get_node("ColorRect").margin_bottom = y
    pass # Replace with function body.
func _input(ev):
    if ev is InputEventKey and ev.scancode == KEY_ENTER and flag_raised:
        flag_raised = false;
        var text = get_node("LineEdit").get_text()
        var le = get_node("LineEdit")
        le.hide()
        get_node("ColorRect/AudioStreamPlayer2D").play()
        yield(get_tree().create_timer(1.0), "timeout")
        increase_text(get_node("ColorRect/Label4"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label4"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label4"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label3"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label3"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label3"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label2"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label2"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label2"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label5"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label5"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label5"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label6"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label6"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label6"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label7"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label7"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label7"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label8"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label8"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label8"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label9"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label9"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label9"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label10"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label10"),text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label10"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label11"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label11"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label11"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        increase_text(get_node("ColorRect/Label12"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label12"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label12"), text.length())
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
        flag_raised = true
    if ev is InputEventKey and ev.scancode == KEY_ESCAPE:
        get_tree().quit()
func increase_text(label,text):
    var firstChar = text[0]
    var totalString = text
    for i in range(text.length(), 40):
        totalString = firstChar + totalString
        #yield(get_tree().create_timer(.001), "timeout")
        label.set_text(totalString)
        #yield(get_tree().create_timer(.001), "timeout")
        yield(get_tree().create_timer(.0065), "timeout")
    yield(get_tree().create_timer(.0065), "timeout")

func swap_text(label,text):
    var last = text.length() - 1
    var lastChar = text[last]
    var tester = label.get_text()
    for i in range(text.length(), 40):
        tester = tester.substr(1, 39) + lastChar 
        yield(get_tree().create_timer(.0065), "timeout")
        label.set_text(tester)
    #yield(get_tree().create_timer(.010), "timeout")
    yield(get_tree().create_timer(.0065), "timeout")

func decrease_text(label,textLength):
    var totalString = label.get_text()
    for i in range(1, 40 - textLength + 1):
        totalString = totalString.substr(0, 40 - i)
        label.set_text(totalString)
        yield(get_tree().create_timer(.0065), "timeout")