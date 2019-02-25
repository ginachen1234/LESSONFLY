class Booking < ApplicationRecord
  validates :student_id, presence: true
  validates :teacher_id, presence: true
  belongs_to :user
  belongs_to :teacher, class_name: "User"
end
