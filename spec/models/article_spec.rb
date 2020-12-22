require 'rails_helper'

describe Article do
  context 'test des associations' do
    it { should belong_to(:alumni) }
  end
end
