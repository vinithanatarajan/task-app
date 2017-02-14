class Student < ActiveRecord::Base
  has_many :users, through: :class_rooms
end
