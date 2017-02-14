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
end
