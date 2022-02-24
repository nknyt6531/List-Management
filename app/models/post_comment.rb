class PostComment < ApplicationRecord
  enum method: { OUT1: 0, OUT2: 1, IN: 3 }
  enum target: { 本人: 0, 決済者: 1, 配偶者: 2, 家族: 3, その他: 4 }

  enum status: { 留守: 0, 留守１: 1, 留守２: 2, 留守３: 3, 留守４: 4
               NG: 5, 再コール: 6, 新規発送: 7, 時設: 8, web誘導: 9,
               資料説明 :10, 成立: 11 }

  belongs_to :user
  belongs_to :customer

  validates :method, presence: true
  validates :target, presence: true
  validates :status, presence: true
end
