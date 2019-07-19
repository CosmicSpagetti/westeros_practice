require 'rails_helper'

describe "Westeros service" do 
  it "should return a giant hash of members" do 
    resp = WesterosService.new("5").parse_house_response

    expect(resp.first).to have_key(:name)
    expect(resp.first).to have_key(:id)
    expect(resp.first[:name]).to eq("Balon Greyjoy")
    expect(resp.first[:id]).to eq(38)
  end
end