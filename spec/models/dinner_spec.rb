require 'rails_helper'

RSpec.describe Dinner, type: :model do
  describe 'Validations' do
    it 'validate presence of email'
    it 'does not care about email case'
    it 'requires all columns to be filled'
  end
end
