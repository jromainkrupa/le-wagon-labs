require 'rails_helper'

describe Project do
  context 'test des associations' do
    it { should have_many(:alumnis) }
    it { should belong_to(:entrepreneur) }
    it { should have_many(:roles) }
    it { should have_many(:tasks) }
    it { should have_many(:candidacies) }
  end
end

RSpec.describe Project, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:project)).to be_valid
  end

  it 'is not valid without name/pain/target or solution' do
    expect(build(:project_empty)).not_to be_valid
  end
end
