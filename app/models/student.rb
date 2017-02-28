class Student < ActiveRecord::Base
  has_many :class_rooms
  has_many :users, through: :class_rooms
end
