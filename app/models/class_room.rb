class ClassRoom < ActiveRecord::Base
  has_many :students
  has_many :teachers
  belongs_to :user
end
