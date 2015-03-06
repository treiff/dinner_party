require 'rails_helper'

describe 'create dinner party' do
  describe 'home page' do
    before { visit root_path }
    it 'has a valid title' do
      expect(page).to have_title('Dinner Party | Home')
    end
  end
end

# make more of a use case.