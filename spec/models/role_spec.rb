require 'rails_helper'

describe Role do
  context 'test des associations' do
    it { should belong_to(:project) }
    it { should have_many(:candidacies) }
  end
end

RSpec.describe Role, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:role)).to be_valid
  end

  it 'is not valid without name' do
    expect(build(:role_name_empty)).not_to be_valid
  end
end
