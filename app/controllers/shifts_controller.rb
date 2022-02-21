class ShiftsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]

  def index
    @shift = Shift.new
    @user = current_user
    @shifts = Shift.where(user_id: current_user)
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.user_id = current_user.id
    @shift.save
    redirect_to shifts_path
  end

  def show
    @shift = Sfift.find(params[:id])
  end

  def edit
    @shift = Sfift.find(params[:id])
  end

  def update
    @shift = Sfift.find(params[:id])
    @shift.update
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
