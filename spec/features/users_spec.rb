require "rails_helper"

RSpec.feature User, type: :feature do
  let!(:user) { FactoryGirl.create :user }

  context "user signed in" do
    before { sign_in user }
    it "sign in the user" do
      visit "/"
      expect(page).to have_text("Welcome to the teacher portal!")
    end
  end
end
