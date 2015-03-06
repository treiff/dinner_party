feature 'User creates a dinner' do
  scenario 'with valid inputs' do
    visit root_path
    fill_in_dinner
    expect(find_dinner("Joes awesome BBQ")).to be_present
  end

  def fill_in_dinner
    fill_in 'Name', with: "Joes awesome BBQ"
    fill_in 'Date', with: Time.new(2015, 05, 17)
    fill_in 'Time', with: Time.now.strftime("%H:%M")
    fill_in 'Location', with: "My house"
    fill_in 'Email', with: "trevor@example.com"
    check 'Salad'
    check 'Soup'
    click_button 'Create Dinner'
  end

  def find_dinner(email)
    Dinner.find_by(email: email)
  end
end
