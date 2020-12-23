require 'rails_helper'

describe Alumni do
  context 'test des associations' do
    it { should have_many(:articles) }
    it { should have_many(:tickets) }
    it { should have_many(:candidacies) }
    it { should have_many(:language_alumnis) }
  end
end
