class AddFieldsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :class_room, :string
    add_column :students, :current_level, :string
  end
end
