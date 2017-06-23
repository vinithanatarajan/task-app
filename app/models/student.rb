class Student < ActiveRecord::Base
  belongs_to :teacher, class_name: "Student"
end
