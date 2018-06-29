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
def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end
# Passed! and Passed!
