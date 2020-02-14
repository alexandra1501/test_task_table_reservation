class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :reservation_time
      t.time :start_reservation
      t.time :end_reservation
      t.references :user, foreign_key: true
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
