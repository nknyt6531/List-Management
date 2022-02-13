class Customer < ApplicationRecord
  enum gender_id: { 男: 0, 女: 1 }
  has_many :post_comments
end
