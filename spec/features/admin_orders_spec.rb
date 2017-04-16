require 'rails_helper'

describe "When an admin visits the admin dashboard" do
  it "they can see a listing of all orders" do
    admin = User.create(email: "penelope@penelope.com", password: "boom", role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
    visit admin_dashboard_path

    
  end
end
