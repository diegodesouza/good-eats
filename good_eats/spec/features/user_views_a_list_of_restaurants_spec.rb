require 'rails_helper'

feature "User visits the main page of Good Eats" do
  # As a User
  # I want see the listing of restaurants
  # so I know what my options are


  it "see the a list of restaurants" do

    visit '/restaurants'

    restaurant1 = Restaurant.create!()

    expect(page).to have_content restaurant1
  end
end
