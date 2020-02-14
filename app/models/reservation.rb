class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :table
  validate :correct_reservation_time

  def correct_reservation_time
    errors.add(:reservation_time, 'Step is 30 minutes') unless (reservation_time % 30).zero?
  end

  def after_reservation
    self.end_reservation = start_reservation + reservation_time * 60
    delete if end_reservation == Time.now
  end
end
