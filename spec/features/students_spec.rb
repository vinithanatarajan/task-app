require "rails_helper"

RSpec.feature User, type: :feature do
  let!(:student) { FactoryGirl.create :student }

  context "can see list of student" do
    it "shows the list" do
      visit "/students"
      expect(page).to have_text("Students page")
      expect(page).to have_text(student.name)
      expect(page).to have_text(student.class_room)
      expect(page).to have_text(student.current_level)
    end
  end

  describe "I can edit the student details" do
    before do
      visit "/students"
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
end
