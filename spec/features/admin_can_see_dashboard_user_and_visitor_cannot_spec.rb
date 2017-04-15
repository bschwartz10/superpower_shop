require "rails_helper"

describe "Person visits admin dashboard page" do
  context "as admin" do
    it "allows admin to see dashboard" do
      admin = User.create(email: "penelope@penelope.com", password: "boom", role: 1)
      
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
      visit admin_dashboard_path
      
      expect(page).to have_content("Admin Dashboard")
    end
  end
  context "as default user" do
    it "doesn't allow default user to see admin dashbaord" do
      user = User.create(email: "pepe@pepe.com",
                         password: "password",
                         role: 0)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit admin_dashboard_path
      expect(page).to_not have_content("Admin Dashboard")
      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
  
  context "as a guest" do
    it "doesn't allow guest to see admin dashbaord" do
      visit admin_dashboard_path
      expect(page).to_not have_content("Admin Dashboard")
      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end