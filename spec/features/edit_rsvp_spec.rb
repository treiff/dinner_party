require 'rails_helper'

feature 'User edits RSVP' do
  before(:each) do
    @dinner = Dinner.create(name: "my dinner", date: Time.now + (86400), time: Time.now,
                            location: "my house", email: "valid@example.com")
    @rsvp = Rsvp.create(name: "Trevor", dish: "Tacos", dinner_id: @dinner.id)
  end

  scenario 'with valid inputs' do
    visit edit_dinner_rsvp_path(@dinner, @rsvp)
    valid_form
    rsvp = @dinner.rsvps.last
    expect(rsvp.dish).to eq("Fish")
  end

  scenario 'with nonvalid inputs' do
    visit edit_dinner_rsvp_path(@dinner, @rsvp)
    nonvalid_form
    rsvp = @dinner.rsvps.last
    expect(rsvp.dish).to eq("Tacos")
  end

  def valid_form
    fill_in 'rsvp_dish', with: "Fish"
    click_button 'Edit RSVP'
  end

  def nonvalid_form
    fill_in 'rsvp_dish', with: ""
    click_button 'Edit RSVP'
  end
end
