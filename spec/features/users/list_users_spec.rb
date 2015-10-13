require 'spec_helper'

describe "Viewing the list of users" do
  before do
    @user = User.create!(user_attributes)
    sign_in(@user)
  end

  it "shows the users" do
    user1 = User.create!(user_attributes(name: "Susie", email: "susie@example.com"))
    user2 = User.create!(user_attributes(name: "Evelyn", email: "evelyn@example.com"))
    user3 = User.create!(user_attributes(name: "Callie", email: "callie@example.com"))

    visit users_url

    expect(page).to have_link(user1.name)
    expect(page).to have_link(user2.name)
    expect(page).to have_link(user3.name)
  end

end
