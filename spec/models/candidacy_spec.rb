require 'rails_helper'


describe Candidacy do
  context 'test des associations' do
    it { should belong_to(:alumni) }
    it { should belong_to(:project) }
  end
end
