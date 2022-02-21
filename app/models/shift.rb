class Shift < ApplicationRecord
  has_many :users

  validates :date, presence: true
  validates :start, presence: true
  validates :finish, presence: true
end
