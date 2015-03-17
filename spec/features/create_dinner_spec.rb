require 'rails_helper'

feature 'User creates a dinner' do
  scenario 'with valid inputs' do
    visit root_path
    fill_form
    expect(find_dinner("trevor@example.com")).to be_present
  end

  def fill_form
    fill_in 'dinner_name', with: "Joes awesome BBQ"
    fill_in 'dinner_date', with: Time.new(2015, 05, 17)
    fill_in 'dinner_time', with: Time.now.strftime("%H:%M")
    fill_in 'dinner_location', with: "My house"
    fill_in 'dinner_email', with: "trevor@example.com"
    click_button 'Create Dinner'
  end

  def find_dinner(email)
    Dinner.find_by(email: email)
  end
end
