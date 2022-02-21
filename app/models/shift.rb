class Shift < ApplicationRecord
  has_many :users
  
  validates :time, presence: true
  validates :start, presence: true
  validates :finish, presence: true
end
