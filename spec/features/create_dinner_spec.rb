require 'rails_helper'

feature 'User creates a dinner' do
  scenario 'with valid inputs' do
    visit root_path
    valid_form
    expect(find_dinner("trevor@example.com")).to be_present
  end

  scenario 'with nonvalid inputs' do
    visit root_path
    nonvalid_form
    expect(find_dinner("trevor@example.com")).not_to be_present
  end

  def valid_form
    fill_in 'dinner_name', with: "Joes awesome BBQ"
    fill_in 'dinner_date', with: Time.now + ( 7*24*60*60 )
    fill_in 'dinner_time', with: (Time.now + 3600).strftime("%H:%M")
    fill_in 'dinner_location', with: "My house"
    fill_in 'dinner_email', with: "trevor@example.com"
    click_button 'Create Dinner'
  end

  def nonvalid_form
    fill_in 'dinner_name', with: "Joes awesome BBQ"
    fill_in 'dinner_date', with: Time.now + ( 7*24*60*60 )
    fill_in 'dinner_time', with: (Time.now + 3600).strftime("%H:%M")
    fill_in 'dinner_location', with: "My house"
    fill_in 'dinner_email', with: "trevor.example.com"
    click_button 'Create Dinner'
  end

  def find_dinner(email)
    Dinner.find_by(email: email)
  end
end
