require "rails_helper"

feature "User index page", :devise do
  user = FactoryGirl.create(:user, :admin)
  context "user sees own email address" do
    before { sign_in(user, scope: :user) }
    it "shows email address" do
      visit users_path
      expect(page).to have_text(user.email)
    end
  end
end
