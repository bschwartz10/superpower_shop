require 'rails_helper'

describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should have_secure_password }

  it "user can be created as an admin" do
    user = User.create(email: "penelope@penelope.com", password: "boom", role: 1)

    expect(user.role).to eq("admin")
    expect(user.admin?).to be_truthy
  end

  it "user can be created as a default user" do
    user = User.create(email: "sam", password: "pass", role: 0)

    expect(user.role).to eq("default")
    expect(user.default?).to be_truthy
    expect(user.admin?).to be_falsey
  end
end
