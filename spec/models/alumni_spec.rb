require 'rails_helper'

describe Alumni do
  context 'associations' do
    it { should have_many(:articles) }
  end
end

# RSpec.describe Alumni, type: :model do
#   context 'test des associations' do
#     it 'should have many articles' do
#       expect have_many(:articles)
#     end

#     it 'should have many tickets' do
#       expect have_many(:tickets)
#     end

#     it 'should have many candicacies' do
#       expect have_many(:candidacies)
#     end
#     it 'should have many language_alumnis' do
#       expect have_many(:language_alumnis)
#     end
#   end

#   context 'validations on Alumni' do
#     context 'presence first_name and last_name' do
#       it "should'nt save without first_name or last_name" do
#         alumni_empty = build(:alumni_empty)
#         expect(alumni_empty.valid?).to be false
#       end
#     end
#   end
# end
