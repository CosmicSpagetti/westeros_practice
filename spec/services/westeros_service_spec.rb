require 'rails_helper'

describe "Westeros service" do 
  it "should return a giant hash of members" do 
    resp = WesterosService.new("greyjoy").parse_house_response

    expect(resp.first).to have_key(:attributes)
    expect(resp.first[:attributes]).to have_key(:members)
    expect(resp.first[:attributes][:members].first).to have_key(:name)
    expect(resp.first[:attributes][:members].first).to have_key(:id)
    expect(resp.first[:attributes][:members].first[:name]).to eq("Balon Greyjoy")
    expect(resp.first[:attributes][:members].first[:id]).to eq(38)
  end
end