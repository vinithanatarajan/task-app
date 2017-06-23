class RemoveClassRoomFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :class_room, :string
  end
end
