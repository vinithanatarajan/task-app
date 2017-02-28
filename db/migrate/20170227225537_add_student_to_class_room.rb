class AddStudentToClassRoom < ActiveRecord::Migration
  def change
    add_reference :class_rooms, :student, index: true, foreign_key: true
  end
end
