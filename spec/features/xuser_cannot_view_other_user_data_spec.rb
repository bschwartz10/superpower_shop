require 'rails_helper'

RSpec.feature do
  context "authenticated user" do
    before(:each) do
      user1 = User.create(first_name: "brett", last_name: "schwartz", email: "bschwartz@example.com", password: "password", password_confirmation: "password")

      visit login_path

      fill_in "session[email]", with: user.email
      fill_in "session[password]", with: "password"

      click_on "Log In"
      
      
    end
    
    xit "cannot see other user data" do
      
    end
    
    xit "cannot view admin screens/functionality" do
      
    end
    
    xit "cannot make self admin" do
      
    end
  end
end