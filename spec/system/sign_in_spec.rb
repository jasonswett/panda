# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Signing in", type: :system do
  before { create(:phrase) }

  context "with valid credentials" do
    it "signs the user in" do
      user = create(:user)
      visit new_user_session_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Sign In"
      expect(page).to have_content("Sign out")
    end
	end

  context "with invalid credentials" do
    it "shows an error message" do
      visit new_user_session_path
      fill_in "Email", with: "foo@bar.com"
      fill_in "Password", with: "bar"
      click_on "Sign In"
      expect(page).to have_content("Invalid Email or password")
    end
  end
end
