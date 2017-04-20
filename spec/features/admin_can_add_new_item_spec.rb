require 'rails_helper'

RSpec.feature "Admin can add new power to powers list" do
  scenario "when on powers page" do
    @admin = User.create(first_name: 'brett', last_name: 'schwartz', address: '444 turing lane', email: "penelope@penelope1.com", password: "boom", role: 1)
    category = Category.create(title: "cosmic", slug: "cosmic")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@admin)

    visit admin_dashboard_path
    within ".nav" do
      click_on "Create New Power"
    end

    expect(current_path).to eq(new_admin_power_path)
    fill_in "power[title]", with: "Horrendous Burp"
    fill_in "power[description]", with: "Knee buckling stench emits from stomach"
    fill_in "power[price]", with: 2
    select "cosmic", :from => "power[category_id]"
    click_on "Create Power"

    expect(page).to have_content("Horrendous Burp")
    expect(page).to have_content("Knee buckling stench emits from stomach")
    expect(page).to have_content(2)
  end
end
