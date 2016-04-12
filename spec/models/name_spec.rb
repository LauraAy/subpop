require 'rails_helper'

RSpec.describe Name, type: :model do
  subject(:subject) { create(:name) }

  context 'initialization' do
    it 'creates  new name' do
      expect(subject).to be_a Name
    end
  end

  context 'validates' do
    it "is valid" do
      expect(build(:name)).to be_valid
    end

    it "isn't valid if name is blank" do
      expect(build(:name, name: nil)).not_to be_valid
    end

    it "isn't valid is name is not unique" do
      expect(build(:name, name: subject.name)).not_to be_valid
    end

    it "is valid if VIAF ID is numerical" do
      expect(build(:name, viaf_id: "123456789012345678901234567890")).to be_valid
    end

    it "is not valid if VIAF ID is not a number" do
      expect(build(:name, viaf_id: "123456789012345678901234567890x")).not_to be_valid
    end
  end

  context 'date_string' do
    it 'returns nil when no dates provided' do
      expect(build(:name, year_start: nil, year_end: nil).date_string).to be_nil
    end

    it 'returns a combined date' do
      expect(build(:name, year_start: 1820, year_end: 1902).date_string).to eq('1820-1902')
    end

    it 'returns a "-<YEAR_END>" when only end year is provided' do
      expect(build(:name, year_start: nil, year_end: 1902).date_string).to eq('-1902')
    end

    it 'returns a "<YEAR_START>-" when only start year is provided' do
      expect(build(:name, year_start: 1820, year_end: nil).date_string).to eq('1820-')
    end
  end

  context 'full_name' do
    it 'returns a name without a date' do
      expect(build(:name, name: "Smith, Jane").full_name).to eq("Smith, Jane")
    end

    it 'returns a name with a date' do
      expect(build(:name, name: "Smith, Jane, 1820-1902").full_name).to eq("Smith, Jane, 1820-1902")
    end

    it 'returns a name without a date and a date string' do
      expect(build(:name, name: "Smith, Jane", year_start: 1953).full_name).to eq("Smith, Jane, 1953-")
    end

    it 'returns a name with a date and a date string' do
      expect(build(:name, name: "Smith, Jane, -1902", year_start: 1820, year_end: 1902).full_name).to eq("Smith, Jane, -1902")
    end
  end
end
