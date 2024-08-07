# Enter script code
def tabs(times: int = 1):
    keyboard.send_key("<tab>", times)

keyboard.send_keys("Billing Address")
tabs(2)
keyboard.send_keys("Vancouver")
tabs()  
keyboard.send_keys("BC")
tabs()
keyboard.send_keys("V6B 1A1")
tabs()
keyboard.send_key("<space>")
keyboard.send_key("<enter>")

