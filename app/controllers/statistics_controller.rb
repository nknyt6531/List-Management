class StatisticsController < ApplicationController
  def index
    @users = User.all
    @user = User.find(params[:id])
  end
end
