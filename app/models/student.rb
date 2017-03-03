class Student < ActiveRecord::Base
  has_many :class_rooms
  belongs_to :user

  validates :user, presence: true
  validates :name, :class_room, :current_level, presence: { message: "Can't be blank" }
end
