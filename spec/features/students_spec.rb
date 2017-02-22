require "rails_helper"

RSpec.feature Student, type: :feature do

  describe "when I visit students page" do
    let!(:student) { FactoryGirl.create :student }
    let!(:user) { FactoryGirl.create :user }

    before(:each) do
      sign_in user
      visit "/"
      click_on "Students"
      visit "/students"
    end
    context "see a list of student" do
      it "shows the list" do
        expect(page).to have_text("Students page")
        expect(page).to have_text(student.name)
        expect(page).to have_text(student.class_room)
        expect(page).to have_text(student.current_level)
      end
    end

    context "I can add student" do
      before do
        click_on "Add a Student"
        fill_in "Name", with: "Peter"
        fill_in "Class room", with: "Year 8"
        fill_in "Current level", with: "At Expected level"
        click_on "Save"
      end

      it "I can see the new student on the page" do
        expect(page).to have_content("Peter")
        expect(page).to have_content("Year 8")
        expect(page).to have_content("At Expected level")
      end
    end

    context "I can edit the student details" do
      before do
        click_on "Edit"
        fill_in "Name", with: "Molly"
        fill_in "Class room", with: "Year 8"
        fill_in "Current level", with: "At Expected level"
        click_on "Save"
      end

      it "I can see that the student details are updated" do
        expect(page).to have_content("Molly")
        expect(page).to have_content("Year 8")
        expect(page).to have_content("At Expected level")
      end
    end

  # Commenting the below lines because it fails with Selenium webdriver

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
end
