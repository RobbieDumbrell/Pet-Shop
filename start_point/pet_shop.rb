# 1.
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end
# Passed!

# 2.
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
# Passed!

# 3 and 4.
def add_or_remove_cash(pet_shop, amount_cash)
  pet_shop[:admin][:total_cash] += amount_cash
end
# Passed! and Passed!

# 5.
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end
# Passed!

# 6.
def increase_pets_sold(pet_shop, amount_pets_sold)
  pet_shop[:admin][:pets_sold] += amount_pets_sold
end
# Passed!

# 7.
def stock_count(pet_shop)
  return pet_shop[:pets].count
end
# Passed!

# 8 and 9.
def pets_by_breed(pet_shop, breed)
  pets_of_type_breed = []
  for pet in pet_shop[:pets]
    pets_of_type_breed << pet[:name] if pet[:breed] == breed
  end
  return pets_of_type_breed
end
# Passed!

# 10 and 11.
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
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end
# Passed!

# 13.
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end
# Passed!

# 14.
def customer_cash(customer)
  return customer[:cash]
end
# Passed!

# 15.
def remove_customer_cash(customer, cash_amount)
  customer[:cash] -= cash_amount
end
# Passed!

# 16.
def customer_pet_count(customer)
  customer[:pets].count
end
# Passed!

# 17.
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
# Passed!

# OPTIONAL

# 18 and 19.
def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end
# Passed! and Passed!

# 20, 21 and 22.
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
