require 'rails_helper'

RSpec.feature "admin logs in" do
  scenario "and then they're redirected to dashboard" do
    admin = User.create(email: "penelope@penelope1.com", first_name: 'test', last_name: 'test', address: '34 turing lane', password: "boom", role: 1)

    visit login_path

    fill_in "Email", with: "penelope@penelope1.com"
    fill_in "Password", with: "boom"

    click_on "Log In"

    expect(current_path).to eq(admin_dashboard_path)
  end
end
