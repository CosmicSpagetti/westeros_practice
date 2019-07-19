require 'rails_helper'

describe "As a user" do 
  it "can look up members of house" do 
    visit '/'

    select 'Greyjoy'

    click_on "Get Members"

    expect(current_path).to eq('/search')

    expect(page).to have_content("7 Members")

    within ".House-list" do 
      expect(page).to have_css(".name")
      expect(page).to have_css(".id")
      expect(page).to have_content("Balon Greyjoy")
      expect(page).to have_content("38")
    end
  end
end