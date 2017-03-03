class AddUserIdToClassRoom < ActiveRecord::Migration
  def change
    add_reference :class_rooms, :user, index: true, foreign_key: true
  end
end
