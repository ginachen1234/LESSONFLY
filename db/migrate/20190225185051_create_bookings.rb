class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
