require 'rails_helper'

describe "As a user" do 
  it "can look up members of house" do 
    visit '/'

    select 'Greyjoy'

    click_on "Get Members"

    expect(current_path).to eq('/search?house=greyjoy')

    expect(page).to have_content("7 Members")

    within ".House-list" do 
      expect(page).to have_css(".name")
      expect(page).to have_css(".id")
    end
#     ```As a user
# When I visit "/"
# And I select "Greyjoy" from the dropdown
# And I click on "Get Members"
# Then my path should be "/search" with "house=greyjoy" in the parameters
# And I should see a message "7 Members"
# And I should see a list of the 7 members of House Greyjoy
# And I should see a name and id for each member.```
  end
end