require 'rails_helper'

describe Entrepreneur do
  context 'test des associations' do
    it { should have_many(:projects) }
  end
end
