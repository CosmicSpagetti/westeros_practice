require 'rails_helper'

RSpec.describe HouseMember do 
  describe "housemember class" do 
    it "should return name and id" do 
      return_response = [
        {
            id: 38,
            name: "Balon Greyjoy"
        },
        {
            id: 39,
            name: "Alannys Greyjoy"
        },
        {
            id: 40,
            name: "Rodrik Greyjoy"
        },
        {
            id: 41,
            name: "Maron Greyjoy"
        },
        {
            id: 42,
            name: "Yara Greyjoy"
        },
        {
            id: 43,
            name: "Theon Greyjoy"
        },
        {
            id: 44,
            name: "Euron Greyjoy"
        }
    ]
    formate_by_class = return_response.map{|response| HouseMember.new(response)}
    expect(formate_by_class.first.name).to eq("Balon Greyjoy")
    expect(formate_by_class.first.id).to eq(38)
    end
  end
end