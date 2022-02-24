class ShiftsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]

  def index
    @shift = Shift.new
    @user = current_user
    @beginning_of_day = Date.today.beginning_of_month
    @end_of_day = Date.today.end_of_month
    @shifts = Shift.where(user_id: current_user, date: @beginning_of_day..@end_of_day)
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.user_id = current_user.id
    @shift.save
    redirect_to shifts_path
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def edit
    @shift = Shift.find(params[:id])
    @user = current_user
  end

  def update
    @shift = Shift.find(params[:id])
    @shift.update(shift_params)
    redirect_to shifts_path
  end

  def destroy
    @shift = Shift.find(params[:id])
    @shift.destroy
    redirect_to shifts_path
  end

  private

  def shift_params
    params.require(:shift).permit(:date, :start, :finish)
  end

end
