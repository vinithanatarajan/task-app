class AddClassRoomToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :class_room, index: true, foreign_key: true
  end
end
