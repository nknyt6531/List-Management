class PostComment < ApplicationRecord
  enum method: { OUT1: 0, OUT2: 1, IN: 3 }
  enum target: { 本人: 0, 決済者: 1, 配偶者: 2, 家族: 3, その他: 4 }
  enum status: { 留守: 0, 留守: 1, NG: 2, 再コール: 3, 新規発送: 4 }
  enum status2: { 留守1: 0, 留守2: 1, 留守3: 2, 留守4: 3, NG: 4, 再コール: 5, 検討中: 6, 勝負: 7, 獲得予定: 8, 成立: 9 }
  belongs_to :user
  belongs_to :customer

  validates :method, presence: true
  validates :target, presence: true
  validates :status, presence: true

end
