class Student < ActiveRecord::Base
  has_many :class_rooms
  belongs_to :user
end
