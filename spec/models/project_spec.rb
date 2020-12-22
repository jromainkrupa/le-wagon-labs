require 'rails_helper'

describe Project do
  context 'test des associations' do
    # it { should belong_to(:alumni) }
    # it { should have_many(:alumni) }
    it { should belong_to(:entrepreneur) }
  end
end
