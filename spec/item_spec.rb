require './lib/item'

RSpec.describe Item do 
  before(:each) do 
     @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
     @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
  end

  it 'returns name and price for item 2' do 
    expect(@item2.name).to eq("Apple Pie (Slice)")
    expect(@item2.price).to eq(2.50)
  end
end