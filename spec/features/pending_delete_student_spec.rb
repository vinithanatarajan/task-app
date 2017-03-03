require "rails_helper"

RSpec.feature Student, type: :feature do
  # pending "add some examples to (or delete) #{__FILE__}"
  # The delete student specs has been added to  students spec
  # The spec is failing now because of selenium webdriver error
  # will fix this later.

  # context "I can delete the student" do
  #   before do
  #     visit "/students"
  #     click_on "Delete"
  #     # page.driver.browser.switch_to.alert.accept
  #     # page.accept_confirm { click_button "OK" }
  #   end

  #   it "I no longer have student on the page" do
  #     expect(page).to change { Student.count }.by(-1)
  #   end
  # end
end
