require 'rails_helper'

describe Entrepreneur do
  context 'test des associations' do
    it { should have_many(:projects) }
  end
end

RSpec.describe Entrepreneur, :type => :model do

  before(:all) do
    @entrepreneur1 = build(:entrepreneur)
    @entrepreneur2 = build(:entrepreneur_empty)
  end

  it "is valid with valid attributes" do
    expect(@entrepreneur1).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(@entrepreneur2).to_not be_valid
  end

  it "is not valid without an email" do
    entrepreneur = Entrepreneur.new(email: nil)
    expect(entrepreneur).to_not be_valid
  end

  it "is not valid without a password" do
    entrepreneur = Entrepreneur.new(password: nil)
    expect(entrepreneur).to_not be_valid
  end

  it "is not valid without a first name" do
    entrepreneur = Entrepreneur.new(first_name: nil)
    expect(entrepreneur).to_not be_valid
  end

  it "is not valid without a last name" do
    entrepreneur = Entrepreneur.new(last_name: nil)
    expect(entrepreneur).to_not be_valid
  end

  it "is not valid without a phone" do
    entrepreneur = Entrepreneur.new(phone: nil)
    expect(entrepreneur).to_not be_valid
  end
  # it "has a unique email" do
  #   user2 = build(:user, username: "Bob")
  #   expect(user2).to_not be_valid
  # end

  # it 'should have a unique email' do
  #   should validate_uniqueness_of(:email)
  # end

end
