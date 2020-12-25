require 'rails_helper'

describe Language do
  it { should have_many(:language_alumnis) }
end

RSpec.describe Language, type: :model do
  it 'should be valid with a name' do
    expect(build(:language)).to be_valid
  end

  it 'should not be valid without name' do
    expect(build(:language_empty)).not_to be_valid
  end
end

# we create all the language for users so this test are not necessary
