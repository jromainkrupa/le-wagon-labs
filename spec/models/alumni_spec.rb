require 'rails_helper'

describe Alumni do
  context 'test des associations' do
    it { should have_many(:articles) }
    it { should have_many(:tickets) }
    it { should have_many(:candidacies) }
    it { should have_many(:language_alumnis) }
  end
end

RSpec.describe Alumni, :type => :model do

  before(:all) do
    @alumni1 = build(:alumni)
    @alumni2 = build(:alumni_empty)
  end

  it "is valid with valid attributes" do
    expect(@alumni1).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(@alumni2).to_not be_valid
  end

  # it "has a unique email" do
  #   user2 = build(:user, username: "Bob")
  #   expect(user2).to_not be_valid
  # end

  # it "is not valid without a password" do
  #   user2 = build(:user, password: nil)
  #   expect(user2).to_not be_valid
  # end

  # it "is not valid without a username" do
  #   user2 = build(:user, username: nil)
  #   expect(user2).to_not be_valid
  # end

  # it "is not valid without an email" do
  #   user2 = build(:user, email: nil)
  #   expect(user2).to_not be_valid
  # end
end
