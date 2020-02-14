class Table < ApplicationRecord
  has_one :reservation
  belongs_to :user
  belongs_to :restaurant
end
