require 'ten_min_walk'

describe "10 minute walk" do
  
  it "returns false if there are not 10 moves" do
    result = ten_minute_walk?(['w', 's'])
    expect(result).to eq false
  end

end