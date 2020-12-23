require 'rails_helper'

describe LanguageAlumni do
  context 'test des associations' do
    it { should belong_to(:alumni) }
    it { should belong_to(:language) }
  end
end
