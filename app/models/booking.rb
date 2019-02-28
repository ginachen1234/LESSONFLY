class Booking < ApplicationRecord

  validates :student_id, presence: true
  validates :teacher_id, presence: true
  belongs_to :teacher, class_name: "User", foreign_key: "teacher_id"
  belongs_to :student, class_name: "User", foreign_key: "student_id"
end
