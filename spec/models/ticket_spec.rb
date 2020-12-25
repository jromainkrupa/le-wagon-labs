require 'rails_helper'

describe Ticket do
  context 'test des associations' do
    it { should belong_to(:project) }
    it { should belong_to(:alumni) }
  end
end

RSpec.describe Ticket, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:ticket)).to be_valid
  end

  it 'is not valid without description' do
    expect(build(:ticket_desciption_empty)).not_to be_valid
  end
end
