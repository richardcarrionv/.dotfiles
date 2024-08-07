import random

# New fake data lists
company_names = [
    "Quantum Quills", "Eco Eats", "Skyline Software", "Harmony Health",
    "Rapid Rides", "Cozy Corner Bookstore", "Stellar Stars Observatory", "Evergreen Botanicals"
]

addresses = [
    "4201 Starlight Ave", "567 Greenway Lane", "789 Binary Road", "1234 Wellness Street",
    "321 Speedway Boulevard", "987 Bookworm Alley", "654 Galaxy Drive", "210 Botanical Gardens"
]

first_names = [
    "Zoe", "Liam", "Ava", "Noah", "Sophia", "Ethan", "Olivia", "Mason"
]

last_names = [
    "Chen", "Patel", "Kim", "Nguyen", "Rodriguez", "Ali", "Singh", "Müller"
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
