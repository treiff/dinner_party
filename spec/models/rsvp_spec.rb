RSpec.describe Rsvp, type: :model do
  describe 'Validations' do
    it 'has a valid factory' do
      expect(create(:rsvp)).to be_valid
    end

    it 'is not valid without a name' do
      expect(build(:rsvp, name: "")).to_not be_valid
    end

    it 'is not valid without a dish' do
      expect(build(:rsvp, dish: "")).to_not be_valid
    end
  end
end
