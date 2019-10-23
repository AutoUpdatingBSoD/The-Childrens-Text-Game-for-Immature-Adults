extends Node2D

var flag_raised = true;
func _ready():
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
        var s_one = get_node("ColorRect")
        var s_two = get_node("ColorRect2")
        var s_thr = get_node("ColorRect3")
        s_two.hide()
        s_thr.hide()
        le.hide()
        get_node("AudioStreamPlayer2D").play()
        yield(get_tree().create_timer(1.0), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label4"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label4"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label4"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label3"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label3"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label3"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label2"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label2"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label2"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label5"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label5"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label5"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label6"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label6"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label6"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label7"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label7"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label7"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label8"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label8"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label8"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label9"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label9"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label9"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label10"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label10"),text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label10"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label11"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label11"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label11"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        get_node("ColorRect/Whistle").play()
        increase_text(get_node("ColorRect/Label12"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        swap_text(get_node("ColorRect/Label12"), text)
        yield(get_tree().create_timer(0.65), "timeout")
        decrease_text(get_node("ColorRect/Label12"), text.length())
        yield(get_tree().create_timer(0.50), "timeout")
        s_one.hide()
        s_two.show()
        fill_text_left(get_node("ColorRect2/Label3"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        fill_text_right(get_node("ColorRect2/Label2"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        fill_whole_screen(get_node("ColorRect2/Label4"), text)
        yield(get_tree().create_timer(4), "timeout")  
        s_two.hide()
        s_thr.show()
        yield(get_tree().create_timer(1.0), "timeout")
        fill_label_with_text(get_node("ColorRect3/Label3"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        fill_label_with_text(get_node("ColorRect3/Label5"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        fill_label_with_text(get_node("ColorRect3/Label6"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        fill_label_with_text(get_node("ColorRect3/Label7"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        fill_label_with_text(get_node("ColorRect3/Label1"), text)
        yield(get_tree().create_timer(1.0), "timeout")
        get_node("ColorRect3/Scream").play()  
        yield(get_tree().create_timer(3.0), "timeout")   
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
        get_node("ColorRect2/Label2").set_text("")
        get_node("ColorRect2/Label3").set_text("")
        get_node("ColorRect2/Label4").set_text("")
        get_node("ColorRect3/Label1").set_text("")
        get_node("ColorRect3/Label3").set_text("")
        get_node("ColorRect3/Label5").set_text("")
        get_node("ColorRect3/Label6").set_text("")
        get_node("ColorRect3/Label7").set_text("")
        flag_raised = true
    if ev is InputEventKey and ev.scancode == KEY_ESCAPE:
        get_tree().quit()
    if ev is InputEventKey and ev.scancode == KEY_CONTROL:
        OS.window_fullscreen = true  
        yield(get_tree().create_timer(1.0), "timeout")
    elif ev is InputEventKey and ev.scancode == KEY_ALT:
        OS.window_fullscreen = false
        yield(get_tree().create_timer(1.0), "timeout")
func increase_text(label,text):
    var firstChar = text[0]
    var totalString = text
    for i in range(text.length(), 40):
        totalString = firstChar + totalString
        #yield(get_tree().create_timer(.001), "timeout")
        label.set_text(totalString)
        #yield(get_tree().create_timer(.001), "timeout")
        yield(get_tree().create_timer(.0065), "timeout")
    yield(get_tree().create_timer(.001), "timeout")

func swap_text(label,text):
    var last = text.length() - 1
    var lastChar = text[last]
    var tester = label.get_text()
    for i in range(text.length(), 40):
        tester = tester.substr(1, 39) + lastChar 
        yield(get_tree().create_timer(.0065), "timeout")
        label.set_text(tester)
    #yield(get_tree().create_timer(.010), "timeout")
    yield(get_tree().create_timer(.001), "timeout")

func decrease_text(label,textLength):
    var totalString = label.get_text()
    for i in range(1, 40 - textLength + 1):
        totalString = totalString.substr(0, 40 - i)
        label.set_text(totalString)
        yield(get_tree().create_timer(.006), "timeout")

func fill_text_left(label, text):
    get_node("ColorRect2/Pop").play()
    var text_so_far = text + " => "
    for i in range (0,  40):
        for j in range (0, text.length()):
            text_so_far = text_so_far + text[j]
            label.set_text(text_so_far)
            yield(get_tree().create_timer(.006), "timeout")
            
func fill_text_right(label, text):
    get_node("ColorRect2/Pop").play()
    var text_so_far = " <= " + text
    for i in range (0,  30):
        for j in range (0, text.length()):
            text_so_far = text[j] + text_so_far
            label.set_text(text_so_far)
            yield(get_tree().create_timer(.006), "timeout")

func fill_whole_screen(label, text):
    var text_so_far = ""
    for i in range (0, 12):
        for j in range (0, 12):
                text_so_far = text_so_far + text
                yield(get_tree().create_timer(.001), "timeout")
                label.set_text(text_so_far) 
        text_so_far += "\n"
        get_node("ColorRect2/Woo").play()
        label.set_text(text_so_far) 
        yield(get_tree().create_timer(.001), "timeout")
func fill_label_with_text(label, text):
    var text_so_far = ""
    for i in range (0, text.length()):
        text_so_far = text_so_far + text[i]
        yield(get_tree().create_timer(.10), "timeout")
        label.set_text(text_so_far)
        get_node("ColorRect2/Woo").play()
    get_node("ColorRect2/Pop").play()
    yield(get_tree().create_timer(.001), "timeout")
        