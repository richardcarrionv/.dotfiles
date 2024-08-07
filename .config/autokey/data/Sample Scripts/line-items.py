import random

# Fake data lists
product_descriptions = [
    "Steel Beam", "Wooden Table", "Glass Panel", "Concrete Block", "Plastic Container",
    "Aluminum Sheet", "Copper Wire Roll", "Ceramic Tile", "Rubber Mat", "Fabric Roll"
]

def generate_dimension():
    return str(random.randint(40, 60))

def generate_weight():
    return str(random.randint(100, 200))

def get_random_product_data():
    description = random.choice(product_descriptions)
    length = generate_dimension()
    width = generate_dimension()
    height = generate_dimension()
    weight = generate_weight()
    
    return {
        "description": description,
        "length": length,
        "width": width,
        "height": height,
        "weight": weight
    }


def tabs(times: int = 1):
    keyboard.send_key("<tab>", times)

data = get_random_product_data()

keyboard.send_keys(data["description"])
tabs(2)
keyboard.send_keys(data["length"])
tabs()
keyboard.send_keys(data["width"])
tabs()
keyboard.send_keys(data["height"])
tabs()
keyboard.send_keys(data["weight"])
tabs()


