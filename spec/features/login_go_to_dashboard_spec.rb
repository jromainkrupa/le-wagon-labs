require 'rails_helper'

feature 'Create entrepreneur' do

  scenario 'login redirect to dashboard' do
    login_as(create(:entrepreneur))
    # assert_redirected_to controller: "entrepreneur", action: "dashboard"
    # get 'entrepreneur_session'
    # expect(response).to redirect_to(dashboard_entrepreneurs_path)
    expect(page).to have_content('Jean')
  end
end
