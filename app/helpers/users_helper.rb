module UsersHelper
  def from
    @from = Date.today.beginning_of_month
  end

  def today
    @to = Date.today.next_month.beginning_of_month
  end

  def this_month
    PostComment.where(created_at: @form...@to, method: OUT1) #<!-- 当月のOUT1のコメント作成 -->
  end
  
  def send_rate
    
end
