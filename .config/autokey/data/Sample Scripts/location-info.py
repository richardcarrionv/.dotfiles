import random

# Fake data lists
company_names = [
    "Baker Boys", "Pixel Pioneers", "Green Leaf Grocers", "TechnoTrends",
    "Coastal Cafe", "Summit Solutions", "Urban Oasis Landscaping", "Bright Spark Electronics"
]

addresses = [
    "2140 Pegasus Rd NE", "789 Maple Avenue", "456 Oak Street", "1010 Tech Boulevard",
    "222 Coastal Highway", "555 Mountain View Road", "333 Garden Lane", "888 Circuit Street"
]

first_names = [
    "Emily", "John", "Sarah", "Michael", "Jessica", "David", "Emma", "Christopher"
]

last_names = [
    "Breadward", "Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller"
]

def generate_phone_number():
    return f"{random.randint(100, 999)}{random.randint(100, 999)}{random.randint(1000, 9999)}"

def generate_email(first_name, last_name, company_name):
    return f"{first_name.lower()}.{last_name.lower()}@{company_name.lower().replace(' ', '')}.com"

def get_random_data():
    company = random.choice(company_names)
    address = random.choice(addresses)
    first_name = random.choice(first_names)
    last_name = random.choice(last_names)
    phone = generate_phone_number()
    email = generate_email(first_name, last_name, company)
    
    return {
        "company": company,
        "address": address,
        "name": f"{first_name} {last_name}",
        "phone": phone,
        "email": email
    }

fake_data = get_random_data()


def tabs(times: int = 1):
    keyboard.send_key("<tab>", times)

keyboard.send_keys(fake_data["company"])
tabs()
keyboard.send_keys(fake_data["address"])
tabs(7)

keyboard.send_keys(fake_data["name"])
tabs()
keyboard.send_keys(fake_data["phone"])
tabs(2)
keyboard.send_keys(fake_data["email"])
