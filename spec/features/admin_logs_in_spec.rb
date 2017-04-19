require 'rails_helper'

# feature "admin logs in" do
#   attr_reader :admin
#   before(:each) { Fabricate(:admin) }
#   # before(:each) do
#   #   @powers = Fabricate.times(3,:power)
#   # end
#
#   scenario "and then they're redirected to dashboard" do
#     # expect(page).to have_selector(".kitten", count: 3)
#     # within all('.kitten').last do
#     #   expect(page).to have_content(kittens[2].name)
#     # end
#     visit login_path
#     fill_in "Email", with: "pepe@pepe.com"
#     fill_in "Password", with: "password"
#     click_on "Login"
#
#     expect(current_path).to eq(admin_dashboard_path)
#   end
# end

RSpec.feature "admin logs in" do
  scenario "and then they're redirected to dashboard" do
    admin = User.create(email: "penelope@penelope1.com", first_name: 'test', last_name: 'test', address: "101 boom st.", password: "boom", role: 1)

    visit login_path
    fill_in "Email", with: "penelope@penelope1.com"
    fill_in "session_password", with: "boom"
    click_on "Put on Your Mask"
    expect(current_path).to eq(admin_dashboard_path)
  end
end
