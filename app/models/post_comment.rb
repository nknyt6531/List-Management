class PostComment < ApplicationRecord
  enum method: { OUT1: 0, OUT2: 1, IN: 3 }
  enum target: { 本人: 0, 決済者: 1, 配偶者: 2, 家族: 3, その他: 4 }
  enum status: { NG: 0, 留守: 1, 再コール: 2,
               新規発送: 3, 時設: 4, 資料説明: 5,
               勝負: 6, web誘導: 7, 成立: 8 }
  belongs_to :user
  belongs_to :customer

  validates :method, presence: true
  validates :target, presence: true
  validates :status, presence: true
end
