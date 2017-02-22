class User < ActiveRecord::Base
  enum role: [:admin, :user]
  after_initialize :set_default_role, if: :new_record?

  has_many :students, through: :class_rooms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def set_default_role
    self.role ||= :user
  end
end
