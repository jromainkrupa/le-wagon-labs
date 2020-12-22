require 'rails_helper'

describe Ticket do
  context 'test des associations' do
    it { should belong_to(:project) }
    it { should belong_to(:alumni) }
  end
end
