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

# 10.
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
end
# Passed!
