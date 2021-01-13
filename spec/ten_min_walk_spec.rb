require 'ten_min_walk'

describe "10 minute walk" do
  
  it "returns false if there are not 10 moves" do
    result = ten_minute_walk?(['w', 's'])
    expect(result).to eq false
  end

  it "returns true when walk is valid" do
    result = ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) 
    expect(result).to eq true
  end

  it "invalid walk" do
    result1 = ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
    expect(result1).to eq false
    result2 = ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
    expect(result2).to eq false
  end

end