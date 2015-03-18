require 'rails_helper'

feature "User RSVP's to a dinner" do
  let!(:dinner) { Dinner.create(name: "my dinner", date: Time.now + (86400), time: Time.now,
                          location: "my house", email: "valid@example.com") }

  scenario 'with vaild inputs' do
    visit dinner_path(dinner)
    valid_form
    expect(find_rsvp).to be_present
  end

  scenario 'with nonvaild inputs' do
    visit dinner_path(dinner)
    nonvalid_form
    expect(find_rsvp.length).to eq(0)
  end

  def valid_form
    fill_in 'rsvp_name', with: "Jane Smith"
    fill_in 'rsvp_dish', with: "Salad"
    click_button 'RSVP'
  end

  def nonvalid_form
    fill_in 'rsvp_name', with: "Jane Smith"
    fill_in 'rsvp_dish', with: ""
    click_button 'RSVP'
  end

  def find_rsvp
    Rsvp.where(dinner_id: dinner.id)
  end
end
