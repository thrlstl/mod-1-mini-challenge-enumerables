require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    p food_item = " #{food[:name]} (#{food[:cuisine]}) | Heat Level: #{food[:heat_level]}"
  end 
end

def get_names(spicy_foods)
  spicy_foods.map do |food|
    food[:name]
   end
end

def spiciest_foods(spicy_foods)
  arr = 
    spicy_foods.select do |food|
          food[:heat_level] > 5
        end 
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  spiciest = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest)
end

def average_heat_level(spicy_foods)
  heat_level = 0
  spicy_foods.each do |food|
    heat_level += food[:heat_level]
  end 
  heat_level / spicy_foods.size
end