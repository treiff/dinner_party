require 'rails_helper'

feature 'User edits RSVP' do
  let!(:dinner) { Dinner.create(name: "my dinner", date: Time.now + (86400), time: Time.now,
                          location: "my house", email: "valid@example.com") }
  let!(:rsvp) { Rsvp.create(name: "Trevor", dish: "Tacos", dinner_id: dinner.id) }

  scenario 'with valid inputs' do
    visit edit_dinner_rsvp_path(dinner, rsvp)
    valid_form
    expect(rsvp.dish).to eq("Fish")
  end

  def valid_form
    fill_in 'rsvp_dish', with: "Fish"
    click_button 'Edit RSVP'
  end
end
