require 'rails_helper'

describe 'static pages' do
  describe 'home page' do
    before { visit root_path }
    it 'has a valid title' do
      expect(page).to have_title('Dinner Party | Home')
    end
  end

  describe 'about page' do
    before { visit about_path }
    it 'has a valid title' do
      expect(page).to have_title('Dinner Party | About')
    end
  end

  describe 'contact page' do
    before { visit contact_path }
    it 'has a valid title' do
      expect(page).to have_title('Dinner Party | Contact')
    end
  end

  describe 'help page' do
    before { visit help_path }
    it 'has a valid title' do
      expect(page).to have_title('Dinner Party | Help')
    end
  end
end
