require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.describe Event do 
  before(:each) do 
    @event = Event.new("South Pearl Street Farmers Market") 
    @food_truck1 = FoodTruck.new("Rocky Mountain Pies")
    @food_truck2 = FoodTruck.new("Ba-Nom-a-Nom") 
    @food_truck3 = FoodTruck.new("Palisade Peach Shack")
    @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
  end

  it 'exists' do 
    expect(@event.name).to eq("South Pearl Street Farmers Market")
    expect(@event.food_trucks).to eq([])
  end

  it 'returns the  foodtrucks' do 
    @event.add_food_truck(@food_truck1)
    @event.add_food_truck(@food_truck2)
    @event.add_food_truck(@food_truck3)

    expect(@event.food_trucks).to eq([@food_truck1, @food_truck2, @food_truck3])
  end
end