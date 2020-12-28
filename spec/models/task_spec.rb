require 'rails_helper'

describe Task do
  context 'test des associations' do
    it { should belong_to(:project) }
  end
end

RSpec.describe Task, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:task)).to be_valid
  end

  it 'is not valid without name' do
    expect(build(:task_name_empty)).not_to be_valid
  end
end
