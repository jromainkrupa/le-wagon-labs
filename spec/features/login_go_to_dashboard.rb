require 'rails_helper'

feature 'Create entrepreneur' do

  scenario 'login' do
    login_as(create(:entrepreneur))
    expect(response).to redirect_to(dashboard_entrepreneurs)
    expect(page).to have_content('Jean')
  end
end
