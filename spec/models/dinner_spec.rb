RSpec.describe Dinner, type: :model do
  describe 'Validations' do
    it 'has a valid factory' do
      expect(create(:dinner)).to be_valid
    end

    it 'is not valid without a email' do
      expect(build(:dinner, email: "")).to_not be_valid
    end

    it 'is not valid without a name' do
      expect(build(:dinner, name: "")).to_not be_valid
    end

    it 'is not valid without a location' do
      expect(build(:dinner, location: "")).to_not be_valid
    end

    it 'generates a unique slug upon creation' do
      expect(create(:dinner).slug).to_not be_empty
    end
  end
end
