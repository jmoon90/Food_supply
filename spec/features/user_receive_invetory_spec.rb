require 'spec_helper'

feature 'food service employee' do
  scenario 'receives valid input' do
    visit new_track_food_supply_path
    fill_in 'Title', with: 'Pasta'
    fill_in 'Description', with: 'Some tomatoe sauce and noodles'
    fill_in 'Quantity', with: 3
    click_on 'Submit'

    expect(page).to have_content("Success")
  end

  scenario 'receives invalid input' do
    visit new_track_food_supply_path
    click_on 'Submit'

    expect(page).to have_content('blank')
  end

  scenario 'views all food supplies provided' do
    visit track_food_supplies_path
    FactoryGirl.create(:track_food_supply)
  end
end
