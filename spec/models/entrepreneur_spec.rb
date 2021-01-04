require 'rails_helper'

describe Entrepreneur do
  context 'test des associations' do
    it { should have_many(:projects) }
  end
end

RSpec.describe Entrepreneur, :type => :model do

  it "is valid with valid attributes" do
    expect(build(:entrepreneur)).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(build(:entrepreneur_empty)).to_not be_valid
  end

  it "is not valid without a first name" do
    expect(build(:entrepreneur_first_name_empty)).to_not be_valid
  end

  it "is not valid without a last name" do
    expect(build(:entrepreneur_last_name_empty)).to_not be_valid
  end

  it "is not valid without a phone" do
    expect(build(:entrepreneur_phone_empty)).to_not be_valid
  end
end
