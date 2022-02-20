class Customer < ApplicationRecord
  enum gender_id: { 男: 0, 女: 1 }
  has_many :post_comments
  has_many :user_customers
  has_many :users, through: :user_customers
end
