require 'rails_helper'

describe Candidacy do
  context 'test des associations' do
    it { should belong_to(:alumni) }
    it { should belong_to(:role) }
  end
end

RSpec.describe Article, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:candidacy)).to be_valid
  end
  # candacy are created when alumnis apply to a project nothing to validate because we create it
end
