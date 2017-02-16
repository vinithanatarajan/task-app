class User < ActiveRecord::Base
  has_many   :students, through: :class_rooms
  has_many   :user_roles
  has_many   :roles, through: :user_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
