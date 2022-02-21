class Customer < ApplicationRecord
  enum gender_id: { 男: 0, 女: 1 }
  has_many :post_comments
  has_many :user_customers
  has_many :users, through: :user_customers

  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥]/+\z }
  validates :last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥]/+\z }
  validates :first_name_kana, presence: true, format: { with: /\A[ｧ-ﾝﾞﾟ]+\z/ }
  validates :last_name_kana, presence: true, format: { with: /\A[ｧ-ﾝﾞﾟ]+\z/ }
  validates :gender_id, presence: true
  validates :birthday, presence: true
  validates :age, presence: true, format: { with: /\A[0-9]+\z/ }
  validates :post_code, presence: true, format: { with: /\A\d{7}\z/ },
                                        format: { /\A[0-9]+\z/ }
  validates :address, presence: true
  validates :home_phone_number, format: { with: /\A\d{10,11}\z/ },
                                format: { with: /\A[0-9]+\z/ }
  validates :phone_number, format: { with: /\A\d{10,11}\z/ }
                           format: { with: /\A[0-9]+\z/ }
end
