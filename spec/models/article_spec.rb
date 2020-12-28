require 'rails_helper'

describe Article do
  context 'test des associations' do
    it { should belong_to(:alumni) }
  end
end

RSpec.describe Article, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:article)).to be_valid
  end

  it 'is not valid with title less than 5 chars' do
    expect(build(:article_title_2)).not_to be_valid
  end

  it 'is not valid with content less than 100 chars' do
    expect(build(:article_content_less_100)).not_to be_valid
  end
end
