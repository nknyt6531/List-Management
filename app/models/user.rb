class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :post_comments
  belongs_to :shifts
  has_many :user_customers
  has_many :customers, through: :user_customers
  
  validates :name, presence: true, uniqueness: { scope: :user }
  validates :email, presence: true, uniqueness: true
end
