# 1.
# Takes a pet shop hash and returns the value paired with the :name key.
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end
# Passed!

# 2.
# Takes a pet shop hash and returns the value paired with the :total_cash key within the :admin hash.
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
# Passed!

# 3 and 4.
# Takes a pet shop hash and adds an amount of cash to the total cash held in the pet shop (amount can be negative).
def add_or_remove_cash(pet_shop, amount_cash)
  pet_shop[:admin][:total_cash] += amount_cash
end
# Passed! and Passed!

# 5.
# Takes a pet shop hash and returns the value paired with the :pets_sold key within the :admin hash.
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end
# Passed!

# 6.
# Takes a pet shop hash and adds an amount of pets sold to the total pets sold in the pet shop.
def increase_pets_sold(pet_shop, amount_pets_sold)
  pet_shop[:admin][:pets_sold] += amount_pets_sold
end
# Passed!

# 7.
# Takes a pet shop hash and count the length of the :pets array - returning the amount of pets.
def stock_count(pet_shop)
  return pet_shop[:pets].count
end
# Passed!

# 8 and 9.
# Take a pet shop hash and define a breed type (string) to search for, return an array of the pet names of the specified breed within the pet shop hash.
def pets_by_breed(pet_shop, breed)
  pets_of_type_breed = []
  for pet in pet_shop[:pets]
    pets_of_type_breed << pet[:name] if pet[:breed] == breed
  end
  return pets_of_type_breed
end
# Passed!

# 10 and 11
# Takes a pet shop hash and a pet name (string) and returns pet if found, or nil if not found.
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
    return nil
end
# Passed! and Passed!

# 12.
# Takes a pet shop hash and a pet name (string) and deletes the pet from the pet shop if the specified name matches.
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end
# Passed!

# 13.
# Adds a new pet (as a hash) to the pet shop hash within the :pets key.
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end
# Passed!

# 14.
# Returns the cash of a given customer (customer is a hash).
def customer_cash(customer)
  return customer[:cash]
end
# Passed!

# 15.
# Takes a customer (hash) and an amount to add to the customer's :cash value.
def remove_customer_cash(customer, cash_amount)
  customer[:cash] -= cash_amount
end
# Passed!

# 16.
# Takes a customer (hash) and counts the pets array returning the number of pets that customer has.
def customer_pet_count(customer)
  customer[:pets].count
end
# Passed!

# 17.
# Takes a customer (hash) and adds a new pet into their pets array.
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
# Passed!

# OPTIONAL

# 18 and 19.
# Takes a customer (hash) and determines whether their :cash value is more or equal to a specified pet. True if yes, False if no.
def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end
# Passed! and Passed!

# 20, 21 and 22.
# Takes a pet shop hash, a pet and a customer and sees if the customer can afford the pet based on price, and if yes adds pet to customer, increases pets sold, removes cash from the customer and adds cash to the shop.
def sell_pet_to_customer(pet_shop, pet, customer)
  return if pet == nil
  if customer_can_afford_pet(customer, pet) == true
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(pet_shop, pet[:price])
  end
end
# Passed! Passed! and Passed!
