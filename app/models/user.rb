class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :teacher_bookings, class_name: "Booking", foreign_key: "teacher_id"
  has_many :student_bookings, class_name: "Booking", foreign_key: "student_id"
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end

# http://railscasts.com/episodes/163-self-referential-association
# has_many :bookings
# has_many :teachers, :through => :bookings
# has_many :inverse_bookings, :class_name => "Teacher", :foreign_key => "teacher_id"
# has_many :inverse_teachers, :through => :inverse_bookings, :source => :user
