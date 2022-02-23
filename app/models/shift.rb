class Shift < ApplicationRecord
  belongs_to :user

  def start_time
    DateTime.parse(self.date.strftime('%Y-%m-%d') +'T'+ self.start.strftime('%X'))
  end

  def working_time
    ((self.finish - self.start)/3600)-1
  end
  
  validates :date, presence: true
  validates :start, presence: true
  validates :finish, presence: true
end
