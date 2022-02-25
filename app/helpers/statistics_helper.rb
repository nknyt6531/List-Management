module StatisticsHelper
  def get_sent_average
    PostComment.where(status: 4).count / User.all.count #<!-- 発送数平均 -->
  end

  def absence1_average
    PostComment.where(status: 4, status2: 0).count / User.all.count #<!-- 留守1平均 -->
  end

  def absence2_average
    PostComment.where(status: 4, status2: 1).count / User.all.count
  end

  def absence3_average
    PostComment.where(status: 4, status2: 2).count / User.all.count
  end

  def absence4_average
    PostComment.where(status: 4, status2: 3).count / User.all.count #<!-- 留守4平均 -->
  end

  def again_average
    PostComment.where(status: 4, status2: 5).count / User.all.count #<!-- 再コール平均 -->
  end

  def examination_average
    PostComment.where(status: 4, status2: 6).count / User.all.count #<!-- 検討中平均 -->
  end

  def great_average
    PostComment.where(status: 4, status2: 7).count / User.all.count #<!-- 勝負平均 -->
  end

  def acquired_average
    PostComment.where(status: 4, status2: 9).count / User.all.count #<!-- 獲得平均 -->
  end

  def ng_average
    PostComment.where(status: 4, status2: 4).count / User.all.count #<!-- NG平均 -->
  end

  def from
    @from = Date.today.beginning_of_month
  end

  def today
    @to = Date.today.next_month.beginning_of_month
  end

  def this_month
    PostComment.where(created_at: @form...@to)
  end

end
