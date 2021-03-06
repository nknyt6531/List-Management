class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :post_comments
  has_many :shifts
  has_many :user_customers
  has_many :customers, through: :user_customers

  validates :name, presence: true, uniqueness: { scope: :user }
  validates :email, presence: true, uniqueness: true
end
